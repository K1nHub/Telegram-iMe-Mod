.class public Lorg/telegram/messenger/ContactsController;
.super Lorg/telegram/messenger/BaseController;
.source "ContactsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ContactsController$Contact;,
        Lorg/telegram/messenger/ContactsController$MyContentObserver;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/ContactsController; = null

.field public static final PRIVACY_RULES_TYPE_ADDED_BY_PHONE:I = 0x7

.field public static final PRIVACY_RULES_TYPE_CALLS:I = 0x2

.field public static final PRIVACY_RULES_TYPE_COUNT:I = 0x9

.field public static final PRIVACY_RULES_TYPE_FORWARDS:I = 0x5

.field public static final PRIVACY_RULES_TYPE_INVITE:I = 0x1

.field public static final PRIVACY_RULES_TYPE_LASTSEEN:I = 0x0

.field public static final PRIVACY_RULES_TYPE_P2P:I = 0x3

.field public static final PRIVACY_RULES_TYPE_PHONE:I = 0x6

.field public static final PRIVACY_RULES_TYPE_PHOTO:I = 0x4

.field public static final PRIVACY_RULES_TYPE_VOICE_MESSAGES:I = 0x8

.field private static cachedCollator:Ljava/text/Collator;

.field private static cachedCollatorLocale:Ljava/util/Locale;


# instance fields
.field private addedByPhonePrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private callPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private completedRequestsCount:I

.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsBook:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private contactsBookLoaded:Z

.field public contactsBookSPhones:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsByPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsByShortPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsDict:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field public contactsLoaded:Z

.field private contactsSyncInProgress:Z

.field private delayedContactsUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private deleteAccountTTL:I

.field public doneLoadingContacts:Z

.field private forwardsPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private globalPrivacySettings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

.field private groupPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private ignoreChanges:Z

.field private inviteLink:Ljava/lang/String;

.field private lastContactsVersions:Ljava/lang/String;

.field private lastseenPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private final loadContactsSync:Ljava/lang/Object;

.field private loadingContacts:Z

.field private loadingDeleteInfo:I

.field private loadingGlobalSettings:I

.field private loadingPrivacyInfo:[I

.field private migratingContacts:Z

.field private final observerLock:Ljava/lang/Object;

.field private p2pPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public phoneBookContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public phoneBookSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneBookSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private phonePrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private profilePhotoPrivacyRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field private projectionNames:[Ljava/lang/String;

.field private projectionPhones:[Ljava/lang/String;

.field private searchAccountByTelTimeoutRunnable:Ljava/lang/Runnable;

.field private sectionsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortedUsersMutualSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortedUsersNotMutualSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sortedUsersSectionsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemAccount:Landroid/accounts/Account;

.field private updatingInviteLink:Z

.field public usersMutualSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field

.field public usersNotMutualSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field

.field public usersSectionsDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private voiceMessagesRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-vE5lM0GlMdDKb9dPJ1RSRLq8e8(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$40(Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0y37O8axk2YwL7R2Y2vrxjKWpT8(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$deleteContact$58(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1FhMO46xL3rKzMp72B08DLGfH4k(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$45(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2B387FGcWho5-pUFNhceDS_P6K4(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$25(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4ASRooRMVbq8TbYwm03tc93zRu4(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$66(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4jg88PxbnnTnZE6a0y3KqtHlmsk(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$forceImportContacts$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$5KQcp7gZu3AX-w2FNMjfTYntxBA(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$98kczgRStFMidA2NFANEUGY0rFU(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$syncPhoneBookByAlert$11(Ljava/util/HashMap;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$9nhDzpqQJomLBmsG2T7Kb5XMg3A(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$34()V

    return-void
.end method

.method public static synthetic $r8$lambda$BOTnz5XPJfkUCnZ4-XDbdFgg1-o(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BQOf4PaCNYC_aV5ijqJcgPXVpjU(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$cleanup$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$CWwEbX_ZC8DQhx6B7MDCMdis36I(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$deleteAllContacts$13(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DTqLUZ8bNjpooiWdLlB5RInJ0mc(Lorg/telegram/messenger/ContactsController;Lorg/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ContactsController;->lambda$deleteContact$60(Lorg/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E1LAm-8AyLCQiapPIp9D163FYHE(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$44(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F_7nCxDXdmIy7jFPrgNLn1rlkbE(Lorg/telegram/messenger/ContactsController;ILjava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$41(ILjava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HgjsYwXkqCjqoPyvedooOxbKjAs(Ljava/text/Collator;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$updateUnregisteredContacts$47(Ljava/text/Collator;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Hobt9wQwKcldqGdgaJGNgCHc8dI(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$performWriteContactsToPhoneBook$50(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IxufsYmV-1DFxJi_XV8F_BKszdY(Landroidx/collection/LongSparseArray;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$35(Landroidx/collection/LongSparseArray;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JEWTn4CzbCVtO2EooBmksUvvQ9M(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$67(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KeaXU7M9KLKibFLB-t7erygcuDA(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$64(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KjS5lBLpL84NGVdupzlPzxI2M4Y(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$21(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KuyENjedMX5WmO3vwEhlVxlwDNU(Lorg/telegram/messenger/ContactsController;ILorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$4(ILorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LUSEFDKO0kpJhKBN9v6-u-5Usok(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$39(Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LiOmY0nzxF9xrXS-MuTYcfNO1As(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$MVLkGycqKDp-tqFMEJ8BDKdXcWE(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$26(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NDqHzAMfGchRJAF9DZT_l2BL7qg(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$applyContactsUpdates$52()V

    return-void
.end method

.method public static synthetic $r8$lambda$O9bVREoRrYu_ctW9tx9OGPlUZGk(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$addContact$56(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PycyCi6Z95aa6dzKLFFKbyisGH8(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$36(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QmO5Z9eS9NYUmTY18RSbi33STuQ(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$addContact$57(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RaaJS4I1G4Mx4Pt2oQCiFy6nZJs(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$24(Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RcV6d7nd-mBpLwpDvPDKrG8VRFg(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$getContactsHash$30(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S5uCuT5AcG1GAwjmleO2h9clKN4(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$46(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TkMbET2MWkSYI6iUcIXd_9sMUbI(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$20(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDvB0hcPUfP1OpXidibrcVn992c(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$37(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WoI5ZSmq4VHb5snCl_pDETWAv04(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$reloadContactsStatuses$62(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XIU66-mW8-kSgXWS-g8wU2Ms1K0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/ContactsController;->lambda$markAsContacted$54(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZscbRGYN97zOWdoKwAICHzigY-4(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$checkInviteText$7(Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_sGd5JqaD6YuSCMMLVfCMA29xVM(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$0(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUsVdCpEOJThDGCiSW0ufnZdj3c(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$checkInviteText$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aWk36bHCjw780kll7yqxZeNrSlc(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$38(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bWulppiyfZrQ81Puo9buJVCzv0g(Ljava/text/Collator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$43(Ljava/text/Collator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b_-vCkvbKIs8YH5qEhVN3MYbbkU(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$applyContactsUpdates$53(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$carcm1LZfTjMyZZKHVq7Tj91QDo(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$new$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$dEDDHew2SkKw9DFHNobQz1fBDP8(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$28(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e4f4D2JoZLU_xHx4K6lRBPOfe4E(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$loadContacts$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$hojvtBd2-Sq3XoNaDYNDWnVVr2g(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$addContact$55(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hqW_70BIZbP4TT2LLRMJfjurqps(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$65(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iOYOC9TBJ23LWZa-rVO3DONB64M(Lorg/telegram/messenger/ContactsController;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$migratePhoneBookToV7$16(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$in8ccfgAiG6Fr0Qyz7BJ5q0uHmQ(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$reloadContactsStatuses$61(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jyKb-gmr8qVpi2vTt-xcRWAOBjU(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$29(Ljava/util/HashMap;ZZZZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdRprHydgFo0GvQhAdQb0y1uLCk(Lorg/telegram/messenger/ContactsController;ILjava/util/HashMap;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$18(ILjava/util/HashMap;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$kz3a4Z_x7UngFyiHP8ouJBH_Di4(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$42(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mAKEcuCm4Qdvkn_6mEinR_Kc7Wo(Lorg/telegram/messenger/ContactsController;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$buildContactsSectionsArrays$48(Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mM8TceHx8du_HS5Uhu3bq2LShEo(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$27(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mb56EJCF7ulpdcrvj4Af7pIBzow(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$checkContacts$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$mcB6UnwcUm1ytwoCy_iSGlq1O50(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$resetImportedContacts$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nalvoNe5WSxDlkzcoQkMxws6fUI(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$deleteContact$59(Ljava/util/ArrayList;ZLjava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nmK8hKo-bSApUt-k8Ec0vVpe1s0(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$deleteAllContacts$12(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oET8UF-FLGC0tmLm7d-QZn_h-7E(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$23(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pRar0a1WYiVQUOCBKmYQa2Ab2ZQ(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/fork/utils/Callbacks$Callback1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$2(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/fork/utils/Callbacks$Callback1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0eL3iu9hf1K2iX3_ltT14SLStE(Lorg/telegram/messenger/ContactsController;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$applyContactsUpdates$51(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uTDQV49fs4F1x2biCO2AaQW5jYU(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$readContacts$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$uYd81qdvOHs9jWqwANiq28dyCuM(Lorg/telegram/messenger/ContactsController;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$3(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uyX9sY9IeXJ5z-bx2ROl1wlMqsA(Lorg/telegram/messenger/ContactsController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$loadContacts$32(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_HFDZwycr8XB4Or6aku3YrCo9E(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$63(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGIiquC9_-Kjtn_L5YuQyN5yPNU(Lorg/telegram/messenger/ContactsController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$68(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yAhJB-jg2V3Ny0yFjbWM41Z1W98(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$19(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFIbNTvZklCogPUEQoqW3tSlekQ(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$buildContactsSectionsArrays$49(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/ContactsController;

    .line 321
    sput-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 336
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersNotMutualSectionsDict:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersNotMutualSectionsArray:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    const-string v0, ""

    .line 149
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 158
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    const-string v1, "lookup"

    const-string v2, "data1"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "display_name"

    const-string v6, "account_type"

    .line 287
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const-string v0, "lookup"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data5"

    .line 295
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    .line 337
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "needGetStatuses"

    const/4 v2, 0x0

    .line 338
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c0"

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d9"

    const-string v2, "U"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00da"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00dc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cc"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c8"

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00ca"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d2"

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c7"

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d1"

    const-string v2, "N"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u0178"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00dd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u0162"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 365
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ContactsController;)Ljava/lang/Object;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/ContactsController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    return p0
.end method

.method private applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_3

    .line 2101
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2102
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2103
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2105
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 2106
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2107
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2108
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2109
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    .line 2110
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2114
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 2115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process update - contacts add = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " delete = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2118
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2122
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, ","

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v2, v4, :cond_b

    .line 2123
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz p2, :cond_5

    .line 2126
    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    :cond_5
    if-nez v7, :cond_6

    .line 2129
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    goto :goto_3

    .line 2131
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :goto_3
    if-eqz v7, :cond_a

    .line 2133
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 2138
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v4, :cond_8

    .line 2140
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v6, :cond_8

    .line 2142
    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2145
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2146
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2148
    :cond_9
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v3, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2151
    :cond_b
    :goto_6
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 2152
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2153
    sget-object v4, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda17;

    invoke-direct {v9, p0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Long;)V

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_c

    .line 2157
    invoke-virtual {p2, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_7

    :cond_c
    move-object v4, v7

    :goto_7
    if-nez v4, :cond_d

    .line 2160
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    goto :goto_8

    .line 2162
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :goto_8
    if-nez v4, :cond_e

    const/4 v3, 0x1

    goto :goto_9

    .line 2169
    :cond_e
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2170
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_f

    .line 2172
    iget-object v9, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-eq v9, v6, :cond_f

    .line 2174
    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2177
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_10

    .line 2178
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2180
    :cond_10
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2184
    :cond_12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_13

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_14

    .line 2185
    :cond_13
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v3, :cond_15

    .line 2189
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 2193
    :cond_15
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0, p3, p4}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_a
    return-void
.end method

.method private buildContactsSectionsArrays(Z)V
    .locals 8

    .line 1972
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1974
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/text/Collator;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1983
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1984
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1986
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1987
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1988
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 1993
    :cond_1
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1994
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1995
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1997
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    const-string v5, "#"

    goto :goto_1

    .line 2000
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2002
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object v5, v6

    .line 2006
    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 2008
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2009
    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    :cond_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2015
    :cond_6
    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda50;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda50;-><init>(Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2026
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 2027
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    return-void
.end method

.method private checkContactsInternal()Z
    .locals 9

    const-string/jumbo v0, "version"

    const/4 v1, 0x0

    .line 642
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 645
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 646
    :try_start_1
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    .line 648
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 649
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 650
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 656
    :cond_2
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 646
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 658
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 659
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 662
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v1
.end method

.method private deleteContactFromPhoneBook(J)V
    .locals 5

    .line 2348
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2351
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2352
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 2355
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2356
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2359
    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 2361
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2362
    :try_start_2
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2363
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 2353
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2906
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    .line 2914
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2917
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2919
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2920
    sget v2, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    const-string v4, " "

    if-ne v2, v3, :cond_8

    if-eqz p0, :cond_6

    .line 2921
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    if-lez p2, :cond_4

    .line 2922
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    if-le v2, v3, :cond_4

    .line 2923
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2925
    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d

    .line 2926
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_d

    .line 2927
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_5

    .line 2928
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p0, v2

    if-le p0, p2, :cond_5

    .line 2929
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 2931
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    if-eqz p1, :cond_d

    .line 2934
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_d

    if-lez p2, :cond_7

    .line 2935
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v2, p2, 0x2

    if-le p0, v2, :cond_7

    .line 2936
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2938
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_b

    .line 2941
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    if-lez p2, :cond_9

    .line 2942
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    if-le v2, v3, :cond_9

    .line 2943
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2945
    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_d

    .line 2946
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    .line 2947
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_a

    .line 2948
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p1, v2

    if-le p1, p2, :cond_a

    .line 2949
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2951
    :cond_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    if-eqz p0, :cond_d

    .line 2954
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    if-lez p2, :cond_c

    .line 2955
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 v2, p2, 0x2

    if-le p1, v2, :cond_c

    .line 2956
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2958
    :cond_c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    :cond_d
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2

    .line 2902
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getContactsHash(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)J"
        }
    .end annotation

    .line 1526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1527
    sget-object p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda54;->INSTANCE:Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda54;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1535
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v4, p1, :cond_1

    if-ne v4, v1, :cond_0

    .line 1538
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 1540
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1541
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v2, v3, v5, v6}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static getInstance(I)Lorg/telegram/messenger/ContactsController;
    .locals 3

    .line 323
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 325
    const-class v1, Lorg/telegram/messenger/ContactsController;

    monitor-enter v1

    .line 326
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    new-instance v2, Lorg/telegram/messenger/ContactsController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 330
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getLocaleCollator()Ljava/text/Collator;
    .locals 3

    .line 218
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollatorLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 220
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollatorLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    .line 221
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 226
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    if-nez v0, :cond_2

    .line 228
    :try_start_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    .line 229
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 231
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 234
    :cond_2
    :goto_1
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    if-nez v0, :cond_3

    .line 235
    new-instance v0, Lorg/telegram/messenger/ContactsController$1;

    invoke-direct {v0}, Lorg/telegram/messenger/ContactsController$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    .line 253
    :cond_3
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private hasContactsPermission()Z
    .locals 10

    .line 2031
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    .line 2032
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .line 2036
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2037
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2038
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    goto :goto_1

    .line 2046
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2049
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return v2

    :catchall_0
    move-exception v2

    .line 2042
    :try_start_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 2046
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2049
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return v1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 2046
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 2049
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2051
    :cond_6
    :goto_4
    throw v1
.end method

.method private isNotValidNameString(Ljava/lang/String;)Z
    .locals 7

    .line 687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 691
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 692
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    const/16 v6, 0x39

    if-gt v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-le v4, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private synthetic lambda$addContact$55(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x1

    .line 2414
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ContactsController;->addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J

    return-void
.end method

.method private synthetic lambda$addContact$56(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2435
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2436
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 2437
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2440
    :cond_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2441
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2442
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2443
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 2445
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    .line 2446
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$addContact$57(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-eqz p3, :cond_0

    return-void

    .line 2399
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2400
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 2401
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 2402
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 2403
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2407
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    const/4 p3, 0x0

    .line 2409
    :goto_1
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 2410
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2411
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    goto :goto_2

    .line 2414
    :cond_3
    sget-object v2, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda44;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2415
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2416
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2417
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2418
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2419
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 2421
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2422
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2423
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_4

    .line 2426
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 2428
    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2434
    :cond_5
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda43;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyContactsUpdates$51(Ljava/lang/Long;)V
    .locals 2

    .line 2153
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContactFromPhoneBook(J)V

    return-void
.end method

.method private synthetic lambda$applyContactsUpdates$52()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 2189
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    return-void
.end method

.method private synthetic lambda$applyContactsUpdates$53(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2194
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2195
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 2196
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2197
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2198
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2201
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2202
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2203
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v3, :cond_2

    .line 2205
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2206
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2209
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 2210
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 2211
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBook()V

    .line 2213
    :cond_4
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/ContactsController;->getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V

    .line 2214
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    .line 2215
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$buildContactsSectionsArrays$48(Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 3

    .line 1975
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    .line 1976
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 1977
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 1978
    invoke-static {p3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p3

    .line 1979
    invoke-virtual {p1, p2, p3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static synthetic lambda$buildContactsSectionsArrays$49(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 2016
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2017
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 p0, -0x1

    return p0

    .line 2023
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkContacts$9()V
    .locals 9

    .line 537
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "detected contacts change"

    .line 539
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ContactsController;->getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkInviteText$7(Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V
    .locals 5

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteLink:Z

    .line 430
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;->message:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->inviteLink:Ljava/lang/String;

    const-string v1, "invitelink"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p1, v1

    const-string v1, "invitelinktime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 434
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private synthetic lambda$checkInviteText$8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 426
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;

    .line 427
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;->message:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 428
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda42;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cleanup$6()V
    .locals 1

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    .line 413
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return-void
.end method

.method private synthetic lambda$deleteAllContacts$12(Ljava/lang/Runnable;)V
    .locals 14

    const-string v0, ""

    const-string v1, "org.telegram.messenger"

    .line 583
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 585
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 586
    iput-object v3, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    const/4 v6, 0x0

    .line 587
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 588
    aget-object v7, v5, v6

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 590
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 592
    iget-object v10, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 593
    invoke-virtual {v2, v7, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 603
    :catchall_0
    :cond_2
    :try_start_1
    new-instance v5, Landroid/accounts/Account;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 604
    invoke-virtual {v2, v5, v0, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    :catch_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    .line 609
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 610
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 612
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 613
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 614
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 615
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 616
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 617
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 618
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 619
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 620
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 621
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 622
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 623
    invoke-virtual {p0, v4, v0, v1}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    .line 624
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$deleteAllContacts$13(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p3, :cond_0

    .line 573
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 574
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    const/4 p2, 0x0

    .line 575
    iput p2, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    .line 576
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    .line 577
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 578
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 579
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 580
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    const-string p2, ""

    .line 581
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 582
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 627
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteContact$58(Ljava/util/ArrayList;)V
    .locals 2

    .line 2485
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 2486
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContactFromPhoneBook(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteContact$59(Ljava/util/ArrayList;ZLjava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 7

    .line 2507
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 2508
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v4, :cond_0

    .line 2511
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2512
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2516
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    .line 2518
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v2, v3, [Ljava/lang/Object;

    sget v4, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2519
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 2521
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget v2, Lorg/telegram/messenger/R$string;->DeletedFromYourContacts:I

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, v0

    const-string p3, "DeletedFromYourContacts"

    invoke-static {p3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v3

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    if-eqz p4, :cond_4

    const/4 p1, 0x0

    .line 2525
    invoke-interface {p4, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$deleteContact$60(Lorg/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-eqz p7, :cond_1

    if-eqz p1, :cond_0

    .line 2477
    new-instance p2, Ljava/lang/Exception;

    iget-object p3, p7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 2482
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    check-cast p6, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p7, p6, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2483
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p6

    invoke-virtual {p6, p2}, Lorg/telegram/messenger/MessagesStorage;->deleteContacts(Ljava/util/ArrayList;)V

    .line 2484
    sget-object p2, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p6, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;

    invoke-direct {p6, p0, p3}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2490
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    .line 2491
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 2492
    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_1

    .line 2495
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p6

    iget-object p7, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p6, p7, v1}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    iget-object p6, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object p7, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p6, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p6, :cond_3

    .line 2498
    iget-object p7, p6, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p7, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 p7, -0x1

    if-eq p2, p7, :cond_3

    .line 2500
    iget-object p6, p6, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 p7, 0x1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p6, p2, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2505
    :cond_4
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$forceImportContacts$10()V
    .locals 9

    .line 548
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "force import contacts"

    .line 549
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 551
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V

    return-void
.end method

.method private static synthetic lambda$getContactsHash$30(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 3

    .line 1528
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$loadContacts$31()V
    .locals 3

    .line 1575
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1576
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 1577
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1577
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$loadContacts$32(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-nez p4, :cond_3

    .line 1565
    check-cast p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;

    const-wide/16 v0, 0x0

    const/4 p4, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 1566
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_contactsNotModified;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1567
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1568
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p1, :cond_0

    .line 1569
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1570
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1572
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p3, p2

    iput p3, p1, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1573
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1574
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1580
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    const-string p1, "load contacts don\'t change"

    .line 1581
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1585
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget p2, p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->saved_count:I

    iput p2, p1, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    .line 1586
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1588
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->contacts:Ljava/util/ArrayList;

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p4}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadPrivacySettings$63(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2582
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 2583
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    iput p1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    const/4 p1, 0x2

    .line 2584
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    goto :goto_0

    .line 2586
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 2588
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadPrivacySettings$64(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2580
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadPrivacySettings$65(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2596
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->globalPrivacySettings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    const/4 p1, 0x2

    .line 2597
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    goto :goto_0

    .line 2599
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    .line 2601
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadPrivacySettings$66(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2594
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadPrivacySettings$67(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2646
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    .line 2647
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2648
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    packed-switch p3, :pswitch_data_0

    .line 2677
    :pswitch_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->addedByPhonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2673
    :pswitch_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->voiceMessagesRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2670
    :pswitch_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2667
    :pswitch_3
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2664
    :pswitch_4
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2661
    :pswitch_5
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2658
    :pswitch_6
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2655
    :pswitch_7
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2652
    :pswitch_8
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    .line 2680
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    const/4 p2, 0x2

    aput p2, p1, p3

    goto :goto_1

    .line 2682
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    aput v0, p1, p3

    .line 2684
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$loadPrivacySettings$68(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2644
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$markAsContacted$54(Ljava/lang/String;)V
    .locals 3

    .line 2371
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2372
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_time_contacted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2374
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    .line 2375
    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$mergePhonebookAndTelegramContacts$43(Ljava/text/Collator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1877
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1878
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1879
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1880
    :cond_0
    instance-of v0, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v0, :cond_2

    .line 1881
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1882
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 1883
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1885
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 1891
    :goto_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    .line 1892
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1893
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1894
    :cond_3
    instance-of v0, p2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v0, :cond_5

    .line 1895
    check-cast p2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1896
    iget-object v0, p2, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    .line 1897
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1899
    :cond_4
    iget-object v0, p2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v1, p2

    .line 1905
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$mergePhonebookAndTelegramContacts$44(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1909
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1910
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1916
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$mergePhonebookAndTelegramContacts$45(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1919
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 1920
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$mergePhonebookAndTelegramContacts$46(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 7

    .line 1849
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1850
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1851
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1852
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1855
    :cond_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1856
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v4, :cond_1

    .line 1858
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_3

    .line 1859
    iput-object v3, v4, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1

    .line 1862
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController$Contact;->getLetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1863
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 1865
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    invoke-virtual {p3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1869
    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1872
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object p1

    .line 1873
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1874
    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda52;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda52;-><init>(Ljava/text/Collator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1908
    :cond_5
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda47;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda47;-><init>(Ljava/text/Collator;)V

    invoke-static {p4, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1918
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0, p4, p3}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$migratePhoneBookToV7$16(Landroid/util/SparseArray;)V
    .locals 8

    .line 1009
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1012
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    .line 1013
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1014
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;

    move-result-object v2

    .line 1015
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1016
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1017
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1018
    :goto_0
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1019
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1022
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 1023
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 v6, 0x0

    .line 1024
    :goto_2
    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1025
    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1026
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 1028
    iput-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 1029
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1034
    :cond_5
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_6

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrated contacts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1037
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v5}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 4

    .line 367
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lorg/telegram/messenger/ContactsController$MyContentObserver;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ContactsController$MyContentObserver;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$17(Ljava/util/HashMap;)V
    .locals 8

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1256
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1258
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 1260
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1261
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1262
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1263
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1266
    :cond_0
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1269
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1270
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1272
    :goto_3
    iget-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1273
    iget-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1274
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 1277
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    :cond_4
    add-int/2addr v4, v7

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_3

    .line 1282
    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1287
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1291
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1292
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;Z)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$18(ILjava/util/HashMap;ZZ)V
    .locals 4

    .line 1360
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->hasNewContactsToImport:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$19(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1

    .line 1377
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1378
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 1379
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1380
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$20(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1

    .line 1364
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1365
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1366
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 v0, 0x1

    .line 1367
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1369
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1371
    :cond_0
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p3, :cond_1

    .line 1372
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0, v0}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1373
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1375
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p1}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    .line 1376
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$21(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1465
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1466
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$22()V
    .locals 2

    .line 1469
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook(Z)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$23(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V
    .locals 0

    .line 1453
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1454
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1455
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 p2, 0x1

    .line 1456
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1458
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1460
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p2, :cond_1

    .line 1461
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p3}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1462
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1464
    :cond_1
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1468
    aget-boolean p1, p7, p1

    if-eqz p1, :cond_2

    .line 1469
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const-wide/32 p3, 0x493e0

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$24(Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    move-object v9, p0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p13

    .line 1401
    iget v4, v9, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v9, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 1403
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_0

    const-string v2, "contacts imported"

    .line 1404
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1406
    :cond_0
    move-object/from16 v2, p12

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 1407
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 1408
    :goto_0
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 1409
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v7, v6

    .line 1410
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1412
    :cond_1
    aput-boolean v5, p3, v4

    .line 1413
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_2

    const-string v3, "result has retry contacts"

    .line 1414
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x0

    .line 1417
    :goto_1
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1418
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_popularContact;

    .line 1419
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->client_id:J

    long-to-int v8, v7

    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v7, :cond_3

    .line 1421
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->importers:I

    iput v6, v7, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v8, p4

    .line 1430
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1432
    :goto_2
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1433
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1434
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->user_id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 1435
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1437
    :cond_5
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_4

    :cond_6
    move-object/from16 v8, p4

    const/4 v6, 0x0

    .line 1439
    :goto_3
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1440
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    .line 1441
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    long-to-int v7, v10

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1443
    :cond_7
    aput-boolean v5, p3, v4

    .line 1444
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_8

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "import contacts error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1448
    :cond_8
    :goto_4
    iget v1, v9, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    move/from16 v2, p6

    if-ne v1, v2, :cond_a

    .line 1449
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1450
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    .line 1452
    :cond_9
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda36;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    move/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$25(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1

    .line 1489
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1490
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 1491
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1492
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$26(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1477
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1478
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1479
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 p1, 0x1

    .line 1480
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1482
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1484
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p1, :cond_1

    .line 1485
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1486
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1488
    :cond_1
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$27(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1509
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$28(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1499
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1500
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 p1, 0x1

    .line 1501
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1503
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1505
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p1, :cond_1

    .line 1506
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1507
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1509
    :cond_1
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$29(Ljava/util/HashMap;ZZZZZZ)V
    .locals 28

    move-object/from16 v13, p0

    move-object/from16 v3, p1

    .line 1072
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1073
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1074
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1075
    :goto_0
    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_0

    .line 1076
    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1080
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    const-string v1, "start read contacts from phone"

    .line 1081
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    if-nez p2, :cond_3

    .line 1084
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z

    .line 1086
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;

    move-result-object v14

    .line 1087
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1088
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1089
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1092
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1093
    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    .line 1094
    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1095
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1098
    :cond_4
    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController$Contact;->getLetter()Ljava/lang/String;

    move-result-object v4

    .line 1099
    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 1101
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1108
    :cond_6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1109
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 1111
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const-string v5, ""

    if-nez v2, :cond_29

    .line 1113
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 1114
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    .line 1115
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1116
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/ContactsController$Contact;

    move-object/from16 p5, v2

    if-nez v17, :cond_8

    .line 1118
    :goto_4
    iget-object v2, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_8

    .line 1119
    iget-object v2, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_7

    .line 1122
    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v2, v17

    :goto_5
    if-eqz v2, :cond_9

    .line 1128
    iget v8, v2, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    iput v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    :cond_9
    if-eqz v2, :cond_c

    .line 1131
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_a
    move-object/from16 v17, v0

    :goto_6
    iget-object v0, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v17, v0

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-eqz v2, :cond_1d

    if-eqz v0, :cond_e

    goto/16 :goto_10

    :cond_e
    const/4 v0, 0x0

    .line 1169
    :goto_8
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_1c

    .line 1170
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1171
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v23, v5

    add-int/lit8 v5, v22, -0x7

    move-object/from16 v22, v12

    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1172
    invoke-virtual {v10, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    if-eqz p3, :cond_12

    move/from16 v24, v12

    .line 1176
    iget-object v12, v13, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v12, :cond_11

    move-object/from16 v25, v11

    .line 1178
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    iget-wide v14, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    if-eqz v11, :cond_10

    add-int/lit8 v16, v16, 0x1

    .line 1181
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_10

    :cond_f
    const/4 v11, 0x1

    const/16 v24, -0x1

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    :goto_9
    move/from16 v12, v24

    goto :goto_b

    :cond_11
    move-object/from16 v25, v11

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 1186
    iget-object v11, v13, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    :cond_12
    move-object/from16 v25, v11

    move/from16 v24, v12

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    :cond_13
    :goto_a
    move/from16 v12, v24

    const/4 v11, 0x0

    :goto_b
    const/4 v14, -0x1

    if-ne v12, v14, :cond_1a

    if-eqz p3, :cond_1b

    if-nez v11, :cond_19

    .line 1193
    iget-object v11, v13, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v8, :cond_18

    .line 1195
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_17

    add-int/lit8 v16, v16, 0x1

    .line 1198
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v8, :cond_14

    goto :goto_c

    :cond_14
    move-object/from16 v8, v23

    .line 1199
    :goto_c
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v5, v23

    .line 1200
    :goto_d
    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    :cond_16
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_f

    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 1206
    :cond_18
    iget-object v8, v13, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    add-int/lit8 v16, v16, 0x1

    .line 1211
    :cond_19
    :goto_e
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1212
    iget v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v11, v8

    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v14, v0

    const/16 v8, 0x20

    shl-long/2addr v14, v8

    or-long/2addr v11, v14

    .line 1213
    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1214
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1215
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1216
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1217
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1220
    :cond_1a
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v8, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v5, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1221
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1222
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1223
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1224
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1b
    :goto_f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v22

    move-object/from16 v5, v23

    move-object/from16 v11, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v23, v5

    move-object/from16 v25, v11

    move-object/from16 v22, v12

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 1227
    iget-object v0, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1228
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_1d
    :goto_10
    move-object/from16 v23, v5

    move-object/from16 v25, v11

    move-object/from16 v22, v12

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    const/4 v5, 0x0

    .line 1133
    :goto_11
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_23

    .line 1134
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1135
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x7

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1136
    invoke-virtual {v10, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1e

    .line 1138
    iget-object v11, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1f

    .line 1140
    iget-object v14, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1141
    iget-object v14, v4, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v14, v5, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1142
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_1f

    goto :goto_12

    :cond_1e
    const/4 v12, -0x1

    :cond_1f
    if-eqz p3, :cond_22

    if-nez v0, :cond_21

    .line 1149
    iget-object v11, v13, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    add-int/lit8 v16, v16, 0x1

    goto :goto_12

    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 1156
    :cond_21
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1157
    iget v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v14, v11

    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v12, v5

    const/16 v11, 0x20

    shl-long/2addr v12, v11

    or-long v11, v14, v12

    .line 1158
    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1159
    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1160
    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1161
    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1162
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, p0

    goto :goto_11

    :cond_23
    if-eqz v2, :cond_24

    .line 1166
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    :goto_13
    move-object/from16 v13, p0

    move-object/from16 v2, p5

    move-object/from16 v0, v17

    move-object/from16 v12, v22

    move-object/from16 v5, v23

    move-object/from16 v11, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_25
    move-object/from16 v25, v11

    move-object/from16 v22, v12

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    if-nez p4, :cond_27

    .line 1232
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v1, v0, :cond_27

    .line 1233
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_26

    const-string v0, "contacts not changed!"

    .line 1234
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_26
    return-void

    :cond_27
    if-eqz p3, :cond_28

    .line 1238
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1239
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move-object/from16 v13, v26

    const/4 v2, 0x0

    invoke-virtual {v0, v13, v2, v2}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    goto :goto_14

    :cond_28
    move-object/from16 v13, v26

    :goto_14
    move-object/from16 v14, p0

    move/from16 v0, v16

    goto/16 :goto_1c

    :cond_29
    move-object/from16 v23, v5

    move-object/from16 v25, v11

    move-object/from16 v22, v12

    move-object v13, v14

    move-object/from16 v27, v15

    if-eqz p3, :cond_33

    .line 1298
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v16, 0x0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1299
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v2, 0x0

    .line 1301
    :goto_16
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_31

    if-nez p5, :cond_2f

    .line 1303
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1304
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v14, p0

    .line 1305
    iget-object v7, v14, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v5, :cond_2e

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_30

    add-int/lit8 v16, v16, 0x1

    .line 1310
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v6, :cond_2a

    goto :goto_17

    :cond_2a
    move-object/from16 v6, v23

    .line 1311
    :goto_17
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_2b

    goto :goto_18

    :cond_2b
    move-object/from16 v5, v23

    .line 1312
    :goto_18
    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    :cond_2c
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    :cond_2d
    const/16 v8, 0x20

    goto :goto_1a

    .line 1316
    :cond_2e
    iget-object v5, v14, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    add-int/lit8 v16, v16, 0x1

    goto :goto_19

    :cond_2f
    move-object/from16 v14, p0

    .line 1320
    :cond_30
    :goto_19
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1321
    iget v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v6, v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v11, v2

    const/16 v8, 0x20

    shl-long/2addr v11, v8

    or-long/2addr v6, v11

    .line 1322
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1323
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1324
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1325
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1326
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    :cond_31
    move-object/from16 v14, p0

    goto/16 :goto_15

    :cond_32
    move-object/from16 v14, p0

    move/from16 v0, v16

    goto :goto_1b

    :cond_33
    move-object/from16 v14, p0

    const/4 v0, 0x0

    :goto_1b
    const/4 v7, 0x0

    .line 1331
    :goto_1c
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_34

    const-string v2, "done processing contacts"

    .line 1332
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_34
    if-eqz p3, :cond_3d

    .line 1336
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1337
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_35

    const-string v2, "start import contacts"

    .line 1338
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_35
    const/4 v2, 0x2

    if-eqz p6, :cond_37

    if-eqz v7, :cond_37

    const/16 v4, 0x1e

    if-lt v7, v4, :cond_36

    const/4 v2, 0x1

    goto :goto_1d

    :cond_36
    if-eqz p4, :cond_37

    if-nez v1, :cond_37

    .line 1348
    iget-object v1, v14, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v4, v14, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    if-le v1, v4, :cond_37

    goto :goto_1d

    :cond_37
    const/4 v2, 0x0

    .line 1356
    :goto_1d
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_38

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new phone book contacts "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " serverContactsInPhonebook "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " totalContacts "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_38
    if-eqz v2, :cond_39

    .line 1360
    new-instance v6, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda13;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/ContactsController;ILjava/util/HashMap;ZZ)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_39
    if-eqz p7, :cond_3a

    .line 1363
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda34;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move/from16 v4, p4

    move-object/from16 v5, v27

    move-object/from16 v6, v25

    move-object/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :cond_3a
    const/4 v0, 0x1

    new-array v15, v0, [Z

    const/4 v0, 0x0

    aput-boolean v0, v15, v0

    .line 1387
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1388
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 1389
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1390
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1391
    iget v2, v1, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1e

    :cond_3b
    const/4 v1, 0x0

    .line 1393
    iput v1, v14, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    .line 1394
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x407f400000000000L    # 500.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v8, v0

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v8, :cond_3e

    .line 1396
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    mul-int/lit16 v0, v7, 0x1f4

    add-int/lit16 v1, v0, 0x1f4

    .line 1398
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1399
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v4, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda63;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v11

    move-object v14, v4

    move-object v4, v15

    move-object/from16 v16, v15

    move-object v15, v5

    move-object v5, v13

    move-object/from16 p1, v6

    move/from16 v20, v7

    move v7, v8

    move/from16 v17, v8

    move-object v8, v10

    move-object/from16 v18, v9

    move/from16 v9, p4

    move-object/from16 v19, v10

    move-object/from16 v10, v27

    move-object/from16 v23, v11

    move-object/from16 v21, v25

    move-object/from16 v11, v21

    move-object/from16 v24, v12

    move-object/from16 v12, v22

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    const/4 v0, 0x6

    move-object/from16 v1, p1

    invoke-virtual {v15, v1, v14, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v14, p0

    move-object/from16 v15, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    goto :goto_1f

    :cond_3c
    move-object/from16 v19, v10

    move-object/from16 v21, v25

    .line 1476
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v13

    move/from16 v4, p4

    move-object/from16 v5, v27

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_20

    :cond_3d
    move-object/from16 v19, v10

    move-object/from16 v21, v25

    .line 1497
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda35;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v13

    move/from16 v4, p4

    move-object/from16 v5, v27

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1511
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1512
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    :cond_3e
    :goto_20
    return-void
.end method

.method private synthetic lambda$performWriteContactsToPhoneBook$50(Ljava/util/ArrayList;)V
    .locals 0

    .line 2096
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$processLoadedContacts$33()V
    .locals 3

    const/4 v0, 0x1

    .line 1632
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    .line 1633
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$processLoadedContacts$34()V
    .locals 3

    const/4 v0, 0x1

    .line 1651
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    .line 1652
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$processLoadedContacts$35(Landroidx/collection/LongSparseArray;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 1665
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1666
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1667
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 1668
    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    .line 1669
    invoke-virtual {p1, p2, p0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$processLoadedContacts$36(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1747
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1748
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1754
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$processLoadedContacts$37(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1758
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1759
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1765
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$processLoadedContacts$38(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V
    .locals 0

    .line 1770
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->usersNotMutualSectionsDict:Ljava/util/HashMap;

    .line 1771
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersNotMutualSectionsArray:Ljava/util/ArrayList;

    .line 1773
    iput-object p3, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 1774
    iput-object p4, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1775
    iput-object p5, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 1776
    iput-object p6, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 1777
    iput-object p7, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 1778
    iput-object p8, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 1779
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-eq p9, p3, :cond_0

    .line 1781
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter p3

    .line 1782
    :try_start_0
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 1783
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1785
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBook()V

    .line 1786
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 1788
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p4, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eq p9, p1, :cond_1

    if-nez p10, :cond_1

    .line 1791
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    goto :goto_1

    .line 1793
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatusesMaybe()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$processLoadedContacts$39(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1805
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    .line 1806
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$processLoadedContacts$40(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    .line 1804
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1808
    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1811
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 1812
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook(Z)V

    return-void
.end method

.method private synthetic lambda$processLoadedContacts$41(ILjava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Z)V
    .locals 19

    move-object/from16 v12, p0

    move/from16 v10, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    .line 1625
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "done loading contacts"

    .line 1626
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v13, 0x1

    if-ne v10, v13, :cond_2

    .line 1628
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    int-to-long v7, v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x15180

    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    .line 1629
    :cond_1
    invoke-direct {v12, v4}, Lorg/telegram/messenger/ContactsController;->getContactsHash(Ljava/util/ArrayList;)J

    move-result-wide v5

    invoke-virtual {v12, v3, v5, v6}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1631
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda6;

    invoke-direct {v0, v12}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-nez v10, :cond_3

    .line 1639
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v1

    long-to-int v1, v6

    iput v1, v5, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_3
    const/4 v1, 0x0

    .line 1643
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1644
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1645
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v0, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_5

    const-wide/16 v0, 0x0

    .line 1646
    invoke-virtual {v12, v3, v0, v1}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    .line 1647
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    const-string v0, "contacts are broken, load from server"

    .line 1648
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1650
    :cond_4
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda4;

    invoke-direct {v0, v12}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    const/4 v14, 0x0

    if-eq v10, v13, :cond_8

    .line 1659
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v5, p4

    invoke-virtual {v2, v5, v14, v13, v13}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    if-eq v10, v1, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 1663
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object v2

    .line 1664
    new-instance v5, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;

    invoke-direct {v5, v0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;-><init>(Landroidx/collection/LongSparseArray;Ljava/text/Collator;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1673
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1674
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x14

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 1677
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1678
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1679
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1680
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1684
    iget-boolean v1, v12, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v1, :cond_9

    .line 1685
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1686
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v14, v16

    goto :goto_2

    :cond_9
    move-object v1, v14

    :goto_2
    const/4 v13, 0x0

    .line 1692
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_14

    .line 1693
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    move-object/from16 p4, v5

    .line 1694
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v0, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v4, :cond_a

    move-object/from16 v4, p4

    move-object/from16 v17, v1

    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_a
    move-object/from16 v18, v6

    .line 1698
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_b

    .line 1699
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1700
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    const/4 v0, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    .line 1704
    :goto_4
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1705
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v17, v1

    const/4 v1, 0x1

    if-le v6, v1, :cond_c

    .line 1706
    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1708
    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "#"

    goto :goto_5

    .line 1711
    :cond_d
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1713
    :goto_5
    iget-object v5, v12, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_e

    move-object v1, v5

    .line 1717
    :cond_e
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_f

    .line 1719
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1720
    invoke-virtual {v8, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1723
    :cond_f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v5, :cond_11

    .line 1725
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_10

    .line 1727
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    :cond_10
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1734
    :cond_11
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-nez v4, :cond_13

    move-object/from16 v4, p4

    .line 1735
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_12

    .line 1737
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1738
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v18

    .line 1739
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    move-object/from16 v6, v18

    .line 1741
    :goto_6
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    move-object/from16 v4, p4

    move-object/from16 v6, v18

    :goto_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p3

    move-object v5, v4

    move-object/from16 v1, v17

    move-object/from16 v4, p2

    goto/16 :goto_3

    :cond_14
    move-object/from16 v17, v1

    move-object v4, v5

    .line 1746
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda48;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda48;-><init>(Ljava/text/Collator;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1757
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda49;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda49;-><init>(Ljava/text/Collator;)V

    invoke-static {v15, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1768
    new-instance v13, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda26;

    move-object v0, v13

    move-object/from16 v5, v17

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v6

    move-object/from16 v4, p2

    move-object v6, v5

    move-object v5, v7

    move-object v7, v6

    move-object v6, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v8

    move-object v8, v11

    move-object v11, v9

    move-object v9, v15

    move/from16 v10, p1

    move-object v15, v11

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1797
    iget-object v0, v12, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, v12, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v0, :cond_15

    iget-boolean v0, v12, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz v0, :cond_15

    .line 1798
    iget-object v0, v12, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v12, v0, v1, v1, v1}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1799
    iget-object v0, v12, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_15
    if-eqz v15, :cond_16

    .line 1803
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda31;

    invoke-direct {v0, v12, v15, v14}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_16
    const/4 v0, 0x1

    .line 1815
    iput-boolean v0, v12, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    :goto_8
    return-void
.end method

.method private synthetic lambda$processLoadedContacts$42(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 11

    .line 1597
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, p1, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1599
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1601
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1603
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 1604
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1605
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1606
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1607
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v2

    goto :goto_1

    .line 1611
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1614
    :cond_3
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1615
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1617
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v8, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1624
    :cond_5
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda12;

    move-object v4, v1

    move-object v5, p0

    move v6, p2

    move-object v7, p3

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ContactsController;ILjava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$readContacts$15()V
    .locals 3

    .line 676
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    .line 682
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    return-void

    .line 677
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 678
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 679
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$reloadContactsStatuses$61(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const-string v0, "needGetStatuses"

    .line 2542
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2543
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 2544
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 2545
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2547
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 2548
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2553
    :cond_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v4, :cond_1

    const/16 v4, -0x64

    .line 2554
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    .line 2555
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v4, :cond_2

    const/16 v4, -0x65

    .line 2556
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    .line 2557
    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v4, :cond_3

    const/16 v4, -0x66

    .line 2558
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 2561
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2563
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 2565
    :cond_4
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 2566
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2568
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v0, v0}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 2570
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$reloadContactsStatuses$62(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p3, :cond_0

    .line 2541
    new-instance p3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda15;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$resetImportedContacts$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$searchAccountByTel$0(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Long;)V
    .locals 3

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    instance-of v0, p0, Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private synthetic lambda$searchAccountByTel$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 106
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->searchAccountByTelTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 108
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 109
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 110
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 114
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;Z)V

    .line 115
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 120
    sget p1, Lorg/telegram/messenger/R$string;->dialogs_tel_search_user_not_found:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$searchAccountByTel$2(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/fork/utils/Callbacks$Callback1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 104
    new-instance p4, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda45;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchAccountByTel$3(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 124
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->searchAccountByTelTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$searchAccountByTel$4(ILorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 130
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 131
    sget p1, Lorg/telegram/messenger/R$string;->dialogs_tel_search_user_error:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$syncPhoneBookByAlert$11(Ljava/util/HashMap;ZZZ)V
    .locals 9

    .line 557
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "sync contacts by alert"

    .line 558
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    .line 560
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V

    return-void
.end method

.method private static synthetic lambda$updateUnregisteredContacts$47(Ljava/text/Collator;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 2

    .line 1957
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1958
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1959
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1961
    :cond_0
    iget-object p1, p2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1962
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1963
    iget-object p1, p2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1965
    :cond_1
    invoke-virtual {p0, v0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    .line 1847
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1848
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda24;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performWriteContactsToPhoneBook()V
    .locals 3

    .line 2095
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2096
    sget-object v1, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contacts_updated_v7"

    const/4 v1, 0x0

    .line 2058
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 2059
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 2062
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 2063
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 2065
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2067
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2068
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    iget-object v7, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    iget-object v7, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const-string v0, "_id"

    const-string v2, "sync2"

    .line 2069
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2070
    :try_start_1
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    if-eqz v0, :cond_5

    .line 2072
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2073
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 2075
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2078
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 2079
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-nez v4, :cond_3

    .line 2080
    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-gez v5, :cond_4

    .line 2081
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/telegram/messenger/ContactsController;->addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move-object v1, v0

    :cond_6
    if-eqz v1, :cond_8

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 2086
    :goto_3
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_8

    .line 2089
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :goto_5
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2091
    :cond_9
    throw p1
.end method

.method private reloadContactsStatuses()V
    .locals 4

    .line 2533
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    .line 2534
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->clearFullUsers()V

    .line 2535
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2536
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "needGetStatuses"

    const/4 v2, 0x1

    .line 2537
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2538
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;-><init>()V

    .line 2539
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda61;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private saveContactsLoadTime()V
    .locals 4

    .line 1839
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1840
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastReloadStatusTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1842
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateUnregisteredContacts()V
    .locals 8

    .line 1926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1928
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1929
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1930
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1931
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1934
    :cond_0
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1937
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1938
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1939
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 v5, 0x0

    .line 1942
    :goto_3
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_4

    .line 1943
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1944
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    goto :goto_2

    .line 1953
    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1955
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object v0

    .line 1956
    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda51;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda51;-><init>(Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1968
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addContact(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2384
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;-><init>()V

    .line 2385
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2386
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->first_name:Ljava/lang/String;

    .line 2387
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->last_name:Ljava/lang/String;

    .line 2388
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    .line 2389
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->add_phone_privacy_exception:Z

    if-nez v1, :cond_1

    const-string p2, ""

    .line 2391
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    goto :goto_0

    .line 2392
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2393
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    .line 2395
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda65;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x6

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J
    .locals 11

    .line 2261
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 2264
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    .line 2268
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x1

    .line 2269
    :try_start_0
    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2271
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 2274
    :try_start_1
    sget-object p2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {p2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "account_name"

    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "account_type"

    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 2275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 2281
    :cond_2
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2283
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "account_name"

    .line 2284
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "account_type"

    .line 2285
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "sync1"

    .line 2286
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    goto :goto_1

    :cond_3
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "sync2"

    .line 2287
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2288
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2290
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "raw_contact_id"

    const/4 v6, 0x0

    .line 2291
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/name"

    .line 2292
    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "data2"

    .line 2293
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v5, "data3"

    .line 2294
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2295
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2306
    :goto_2
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "raw_contact_id"

    .line 2307
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "mimetype"

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.profile"

    const-string v9, "org.telegram.messenger"

    .line 2308
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data1"

    .line 2309
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data2"

    const-string v8, "Telegram Profile"

    const-string v9, "Telegram"

    const-string v10, "iMe"

    .line 2310
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data3"

    const-string v8, "ContactShortcutMessage"

    .line 2311
    sget v9, Lorg/telegram/messenger/R$string;->ContactShortcutMessage:I

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data4"

    .line 2312
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2313
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2315
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "raw_contact_id"

    .line 2316
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "mimetype"

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.call"

    const-string v9, "org.telegram.messenger"

    .line 2317
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data1"

    .line 2318
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data2"

    const-string v8, "Telegram Voice Call"

    const-string v9, "Telegram"

    const-string v10, "iMe"

    .line 2319
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data3"

    const-string v8, "ContactShortcutVoiceCall"

    .line 2320
    sget v9, Lorg/telegram/messenger/R$string;->ContactShortcutVoiceCall:I

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-static {v8, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data4"

    .line 2321
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2322
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v7, "raw_contact_id"

    .line 2325
    invoke-virtual {v5, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "mimetype"

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.call.video"

    const-string v9, "org.telegram.messenger"

    .line 2326
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data1"

    .line 2327
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data2"

    const-string v8, "Telegram Video Call"

    const-string v9, "Telegram"

    const-string v10, "iMe"

    .line 2328
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "data3"

    const-string v8, "ContactShortcutVideoCall"

    .line 2329
    sget v9, Lorg/telegram/messenger/R$string;->ContactShortcutVideoCall:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-static {v8, v9, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data4"

    .line 2330
    iget-wide v7, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v5, v3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2331
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_2
    const-string p1, "com.android.contacts"

    .line 2334
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2335
    array-length p2, p1

    if-lez p2, :cond_5

    aget-object p2, p1, v6

    iget-object p2, p2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz p2, :cond_5

    .line 2336
    aget-object p1, p1, v6

    iget-object p1, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v1, p1

    .line 2341
    :catch_1
    :cond_5
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2342
    :try_start_3
    iput-boolean v6, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2343
    monitor-exit p1

    return-wide v1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 2270
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_6
    :goto_3
    return-wide v1
.end method

.method public checkAppAccount()V
    .locals 14

    const-string v0, ""

    const-string v1, "org.telegram.messenger"

    .line 461
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 463
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 464
    iput-object v3, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 465
    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 466
    aget-object v7, v4, v6

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x5

    if-ge v8, v9, :cond_2

    .line 469
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 471
    iget-object v10, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 472
    iget v9, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    if-ne v8, v9, :cond_0

    .line 473
    iput-object v7, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_3

    .line 482
    :try_start_1
    aget-object v7, v4, v6

    invoke-virtual {v2, v7, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    nop

    .line 492
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 493
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    .line 494
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    if-nez v4, :cond_5

    .line 496
    :try_start_2
    new-instance v4, Landroid/accounts/Account;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 497
    invoke-virtual {v2, v4, v0, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    return-void
.end method

.method public checkContacts()V
    .locals 2

    .line 536
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkInviteText()V
    .locals 5

    .line 418
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "invitelink"

    const/4 v2, 0x0

    .line 419
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->inviteLink:Ljava/lang/String;

    const-string v1, "invitelinktime"

    const/4 v2, 0x0

    .line 420
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 421
    iget-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteLink:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->inviteLink:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    int-to-long v3, v0

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 422
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteLink:Z

    .line 423
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;-><init>()V

    .line 424
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda58;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 378
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 379
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 380
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 383
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 384
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 385
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 386
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 388
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 389
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 390
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 391
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 394
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 395
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    .line 396
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 397
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    const-string v1, ""

    .line 398
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 399
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    .line 400
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 401
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    .line 402
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    .line 404
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    .line 405
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 406
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    .line 407
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    .line 408
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    .line 409
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    .line 411
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createOrUpdateConnectionServiceContact(JLjava/lang/String;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    const-string v5, "raw_contact_id=? AND mimetype=?"

    const-string/jumbo v6, "vnd.android.cursor.item/group_membership"

    const-string v7, "TelegramConnectionService"

    const-string v8, "true"

    const-string v9, "caller_is_syncadapter"

    const-string v10, "mimetype"

    const-string v11, ""

    const-string v12, "raw_contact_id"

    .line 2773
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v13

    if-nez v13, :cond_0

    return-void

    .line 2777
    :cond_0
    :try_start_0
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 2778
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    sget-object v14, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 2781
    sget-object v16, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "_id"

    .line 2784
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v16

    const-string v9, "title=? AND account_type=? AND account_name=?"

    const/4 v14, 0x3

    move-object/from16 v20, v10

    new-array v10, v14, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v10, v4

    iget-object v14, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v4, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object v4, v10, v0

    iget-object v4, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v4, v10, v14

    const/16 v19, 0x0

    move-object/from16 v4, v17

    const/16 v21, 0x3

    move-object v14, v13

    move-object/from16 v22, v15

    move-object v15, v4

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "account_name"

    const-string v15, "account_type"

    if-eqz v9, :cond_1

    .line 2788
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    .line 2789
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v23, v10

    move-object/from16 v17, v15

    goto :goto_0

    .line 2795
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2796
    iget-object v0, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    iget-object v0, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "group_visible"

    move-object/from16 v17, v15

    const/16 v16, 0x0

    .line 2798
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "group_is_read_only"

    move-object/from16 v23, v10

    const/4 v15, 0x1

    .line 2799
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "title"

    .line 2800
    invoke-virtual {v14, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v13, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2802
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-eqz v9, :cond_2

    .line 2805
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2808
    :cond_2
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v16

    const-string v0, "mimetype=? AND data1=?"

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    aput-object v10, v9, v14

    const/16 v19, 0x0

    move-object v14, v13

    move-object/from16 v10, v17

    move-object/from16 v17, v0

    move-object/from16 v18, v9

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2811
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "+99084"

    const-string/jumbo v15, "vnd.android.cursor.item/phone_v2"

    const-string v7, "data3"

    move-object/from16 v16, v13

    const-string v13, "data2"

    move/from16 v17, v4

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    move-object/from16 v18, v6

    const-string v6, "data1"

    if-eqz v0, :cond_3

    .line 2812
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v9, 0x0

    .line 2813
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2814
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const-string v9, "_id=?"

    move-object/from16 v24, v0

    const/4 v12, 0x1

    new-array v0, v12, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v0, v17

    .line 2815
    invoke-virtual {v8, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "deleted"

    .line 2816
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2817
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    move-object/from16 v9, v22

    .line 2814
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v8, 0x2

    new-array v12, v8, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    aput-object v8, v12, v17

    const/4 v8, 0x1

    aput-object v15, v12, v8

    .line 2819
    invoke-virtual {v0, v5, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2821
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2822
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2818
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2823
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v4, v2, v3

    .line 2824
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v5, p3

    .line 2826
    invoke-virtual {v0, v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v11, p4

    .line 2827
    invoke-virtual {v0, v7, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2828
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2823
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    move-object/from16 v5, p3

    move-object/from16 v11, p4

    move-object/from16 v24, v0

    move/from16 v19, v9

    move-object/from16 v9, v22

    const/4 v0, 0x1

    .line 2830
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    iget-object v0, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2831
    invoke-virtual {v8, v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v10, v23

    .line 2832
    invoke-virtual {v0, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "raw_contact_is_read_only"

    const/4 v10, 0x1

    .line 2833
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "aggregation_mode"

    .line 2834
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2835
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2830
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move/from16 v8, v19

    .line 2837
    invoke-virtual {v0, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v10, v20

    .line 2838
    invoke-virtual {v0, v10, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2839
    invoke-virtual {v0, v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2840
    invoke-virtual {v0, v7, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2841
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2836
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2843
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2844
    invoke-virtual {v0, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2845
    invoke-virtual {v0, v10, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2846
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2847
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2843
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2848
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2849
    invoke-virtual {v0, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v2, v18

    .line 2850
    invoke-virtual {v0, v10, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2851
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2852
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2848
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v24, :cond_4

    .line 2855
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v0, "com.android.contacts"

    move-object/from16 v2, v16

    .line 2857
    invoke-virtual {v2, v0, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2860
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public deleteAllContacts(Ljava/lang/Runnable;)V
    .locals 8

    .line 565
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->resetImportedContacts()V

    .line 566
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;-><init>()V

    .line 567
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 568
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 569
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;->id:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public deleteConnectionServiceContact()V
    .locals 11

    const-string v0, ""

    .line 2865
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2868
    :cond_0
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2870
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "title=? AND account_type=? AND account_name=?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "TelegramConnectionService"

    const/4 v8, 0x0

    aput-object v2, v6, v8

    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v7, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v2, v6, v10

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2874
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2875
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2876
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2882
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "raw_contact_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "mimetype=? AND data1=?"

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v7, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2886
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2887
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2888
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2894
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 2891
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 2879
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 2897
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public deleteContact(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;ZLorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public deleteContact(Ljava/util/ArrayList;ZLorg/fork/utils/Callbacks$Callback1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2452
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2460
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;-><init>()V

    .line 2461
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2462
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2463
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 2464
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 2468
    :cond_1
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    .line 2469
    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2470
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;->id:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2472
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2473
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda64;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-virtual {v8, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 2455
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "users is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public deleteUnknownAppAccounts()V
    .locals 12

    const-string v0, "org.telegram.messenger"

    const/4 v1, 0x0

    .line 507
    :try_start_0
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 508
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 509
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 510
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 511
    aget-object v5, v0, v4

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 514
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 516
    iget-object v8, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    .line 524
    :try_start_1
    aget-object v5, v0, v4

    invoke-virtual {v2, v5, v1, v1}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 531
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public forceImportContacts()V
    .locals 2

    .line 547
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getContactsCopy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation

    .line 990
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 991
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 992
    new-instance v2, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v2}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 993
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 994
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 995
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 996
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 997
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 998
    iget-object v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 999
    iget-object v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1000
    iget v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    iput v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    .line 1001
    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    iput-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 1002
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDeleteAccountTTL()I
    .locals 1

    .line 2695
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    return v0
.end method

.method public getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;
    .locals 1

    .line 2711
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->globalPrivacySettings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    return-object v0
.end method

.method public getInviteText(I)Ljava/lang/String;
    .locals 3

    .line 445
    sget p1, Lorg/telegram/messenger/R$string;->InviteText2:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "https://imem.app/dl"

    aput-object v2, v0, v1

    const-string v1, "InviteText2"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoadingDeleteInfo()Z
    .locals 2

    .line 2699
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLoadingGlobalSettings()Z
    .locals 2

    .line 2703
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLoadingPrivacyInfo(I)Z
    .locals 1

    .line 2707
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getPrivacyRules(I)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 2733
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->voiceMessagesRules:Ljava/util/ArrayList;

    return-object p1

    .line 2731
    :pswitch_1
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->addedByPhonePrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2729
    :pswitch_2
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2727
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2725
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2723
    :pswitch_5
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2721
    :pswitch_6
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2719
    :pswitch_7
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2717
    :pswitch_8
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isContact(J)Z
    .locals 1

    .line 1822
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLoadingContacts()Z
    .locals 2

    .line 1519
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1520
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadContacts(ZJ)V
    .locals 2

    .line 1548
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1549
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 1550
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1552
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    const-string p1, "load contacts from cache"

    .line 1553
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1555
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getContacts()V

    goto :goto_0

    .line 1557
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string p1, "load contacts from server"

    .line 1558
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1561
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;-><init>()V

    .line 1562
    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;->hash:J

    .line 1563
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda60;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/messenger/ContactsController;J)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 1550
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public loadPrivacySettings()V
    .locals 6

    .line 2577
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2578
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 2579
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;-><init>()V

    .line 2580
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda57;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2591
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    if-nez v0, :cond_1

    .line 2592
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    .line 2593
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getGlobalPrivacySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getGlobalPrivacySettings;-><init>()V

    .line 2594
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda56;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2604
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 2605
    aget v4, v3, v2

    if-eqz v4, :cond_2

    goto :goto_2

    .line 2608
    :cond_2
    aput v1, v3, v2

    .line 2611
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    packed-switch v2, :pswitch_data_0

    .line 2640
    :pswitch_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAddedByPhone;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAddedByPhone;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2636
    :pswitch_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyVoiceMessages;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyVoiceMessages;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2633
    :pswitch_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneNumber;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneNumber;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2630
    :pswitch_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyForwards;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyForwards;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2627
    :pswitch_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyProfilePhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyProfilePhoto;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2624
    :pswitch_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneP2P;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneP2P;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2621
    :pswitch_6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2618
    :pswitch_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2615
    :pswitch_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 2644
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda59;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/messenger/ContactsController;I)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2687
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected markAsContacted(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2370
    :cond_0
    sget-object v0, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected migratePhoneBookToV7(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    .line 1008
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;ZZZZZZ)V"
        }
    .end annotation

    move-object v9, p0

    if-nez p3, :cond_0

    .line 1042
    iget-boolean v0, v9, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 1045
    :cond_0
    sget-object v10, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda38;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move v4, p2

    move v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZZZ)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .line 2221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2224
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-lez v9, :cond_1

    .line 2225
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2226
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2227
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2228
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2229
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 2231
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2234
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v9, v4, v7

    if-gez v9, :cond_0

    .line 2235
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2236
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2237
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 2239
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2244
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2245
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->deleteContacts(Ljava/util/ArrayList;)V

    .line 2247
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2248
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 2250
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v2, :cond_5

    goto :goto_1

    .line 2256
    :cond_5
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2251
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2252
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_7

    .line 2253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delay update - contacts add = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " delete = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;I)V"
        }
    .end annotation

    .line 1596
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readContacts()V
    .locals 2

    .line 668
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    if-eqz v1, :cond_0

    .line 670
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 672
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 673
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 673
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public readContactsFromPhoneBook()Ljava/util/HashMap;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 701
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-nez v0, :cond_1

    .line 702
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "contacts sync disabled"

    .line 703
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 705
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 707
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 708
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    const-string v0, "app has no contacts permissions"

    .line 709
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 711
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 716
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 720
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 721
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 722
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, v1, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v12, "PhoneOther"

    const-string v14, "+"

    const/4 v15, 0x5

    const/4 v7, 0x0

    const-string v6, ""

    const/4 v5, 0x1

    if-eqz v4, :cond_18

    .line 726
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    .line 728
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v2}, Ljava/util/HashMap;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x1

    .line 729
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 730
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 731
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_4

    move-object v15, v6

    goto :goto_1

    :cond_4
    move-object/from16 v15, v18

    :goto_1
    const-string v8, ".sim"

    .line 735
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 736
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    :goto_3
    move-object/from16 v23, v3

    move-object/from16 v20, v14

    goto :goto_5

    .line 739
    :cond_6
    invoke-static {v13, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 740
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    goto :goto_3

    .line 746
    :cond_7
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v19, :cond_8

    .line 747
    :try_start_3
    invoke-virtual {v13, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v20, v14

    move-object/from16 v5, v19

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v13, v1

    goto/16 :goto_e

    :cond_8
    move-object v5, v13

    move-object/from16 v20, v14

    .line 750
    :goto_4
    :try_start_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 751
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 752
    invoke-static {v0, v14}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 755
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, Lorg/telegram/messenger/ContactsController$Contact;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_a

    .line 757
    :try_start_5
    iget-boolean v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    if-nez v5, :cond_9

    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->provider:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v5, 0x0

    .line 758
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 759
    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iput-object v14, v3, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 763
    iput-boolean v8, v3, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    .line 764
    iput-object v15, v3, Lorg/telegram/messenger/ContactsController$Contact;->provider:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    :goto_5
    move-object/from16 v14, v20

    move-object/from16 v3, v23

    :goto_6
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v15, 0x5

    goto/16 :goto_0

    .line 769
    :cond_a
    :try_start_6
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v3, :cond_b

    .line 770
    :try_start_7
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    const/4 v3, 0x2

    .line 773
    :try_start_8
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 774
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v3, :cond_f

    .line 776
    new-instance v3, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v3}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    move-object/from16 v22, v0

    const/4 v0, 0x4

    .line 777
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_c

    move-object v0, v6

    goto :goto_7

    .line 781
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 783
    :goto_7
    invoke-direct {v1, v0}, Lorg/telegram/messenger/ContactsController;->isNotValidNameString(Ljava/lang/String;)Z

    move-result v24
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v24, :cond_d

    .line 784
    :try_start_9
    iput-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 785
    iput-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v24, v11

    goto :goto_8

    :cond_d
    const/16 v1, 0x20

    .line 787
    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    move-object/from16 v24, v11

    const/4 v11, -0x1

    if-eq v1, v11, :cond_e

    const/4 v11, 0x0

    .line 789
    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto :goto_8

    .line 792
    :cond_e
    iput-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 793
    iput-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 796
    :goto_8
    iput-object v15, v3, Lorg/telegram/messenger/ContactsController$Contact;->provider:Ljava/lang/String;

    .line 797
    iput-boolean v8, v3, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    .line 798
    iput-object v14, v3, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    .line 799
    iput v2, v3, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    .line 800
    invoke-virtual {v9, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v0

    goto :goto_9

    :cond_f
    move-object/from16 v22, v0

    move-object/from16 v24, v11

    .line 803
    :goto_9
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const-string v0, "PhoneMobile"

    if-nez v7, :cond_11

    const/4 v8, 0x3

    .line 808
    :try_start_b
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 809
    iget-object v8, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    if-eqz v7, :cond_10

    goto :goto_a

    :cond_10
    sget v7, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_a
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    const/4 v8, 0x1

    :goto_b
    const/4 v11, 0x2

    goto :goto_c

    :cond_11
    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    .line 811
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v7, "PhoneHome"

    sget v11, Lorg/telegram/messenger/R$string;->PhoneHome:I

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    goto :goto_b

    :cond_12
    const/4 v11, 0x2

    if-ne v7, v11, :cond_13

    .line 813
    iget-object v7, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    sget v13, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    invoke-static {v0, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    goto :goto_c

    :cond_13
    const/4 v0, 0x3

    if-ne v7, v0, :cond_14

    .line 815
    iget-object v7, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v13, "PhoneWork"

    sget v14, Lorg/telegram/messenger/R$string;->PhoneWork:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    const/16 v13, 0xc

    if-ne v7, v13, :cond_15

    .line 817
    iget-object v7, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v13, "PhoneMain"

    sget v14, Lorg/telegram/messenger/R$string;->PhoneMain:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 819
    :cond_15
    iget-object v7, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    sget v13, Lorg/telegram/messenger/R$string;->PhoneOther:I

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :goto_c
    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v14, v20

    move-object/from16 v0, v22

    move-object/from16 v3, v23

    move-object/from16 v11, v24

    goto/16 :goto_6

    :cond_16
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    move-object/from16 v20, v14

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    goto :goto_d

    :cond_17
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    move-object/from16 v20, v14

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 825
    :goto_d
    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v13, p0

    :goto_e
    move-object v3, v4

    move-object v2, v9

    goto/16 :goto_1e

    :catch_0
    :goto_f
    move-object v10, v9

    const/4 v3, 0x0

    goto :goto_10

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    move-object/from16 v13, p0

    move-object v3, v4

    goto/16 :goto_1e

    :cond_18
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    move-object/from16 v20, v14

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    move-object v3, v4

    const/4 v2, 0x1

    const/4 v10, 0x0

    :goto_10
    :try_start_d
    const-string v4, ","

    move-object/from16 v5, v24

    .line 831
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 833
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v13, p0

    :try_start_e
    iget-object v7, v13, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookup IN ("

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") AND "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mimetype"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = \'"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, v23

    move-object v0, v6

    move-object v6, v7

    move-object v7, v9

    const/4 v9, 0x1

    move-object v8, v14

    const/4 v14, 0x1

    move-object v9, v15

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const-string v15, " "

    if-eqz v3, :cond_27

    .line 835
    :cond_19
    :goto_11
    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 836
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 839
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v10, :cond_1a

    .line 840
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    goto :goto_12

    :cond_1a
    const/4 v4, 0x0

    :goto_12
    if-eqz v4, :cond_19

    .line 841
    iget-boolean v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->namesFilled:Z

    if-nez v7, :cond_19

    .line 842
    iget-boolean v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    if-eqz v7, :cond_1e

    if-eqz v5, :cond_1b

    .line 844
    iput-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_13

    .line 846
    :cond_1b
    iput-object v0, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    :goto_13
    if-eqz v6, :cond_1c

    .line 849
    iput-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto :goto_14

    .line 851
    :cond_1c
    iput-object v0, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 853
    :goto_14
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 854
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 855
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_17

    .line 857
    :cond_1d
    iput-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_17

    .line 861
    :cond_1e
    invoke-direct {v13, v5}, Lorg/telegram/messenger/ContactsController;->isNotValidNameString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 862
    :cond_1f
    invoke-direct {v13, v6}, Lorg/telegram/messenger/ContactsController;->isNotValidNameString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_25

    :cond_20
    if-eqz v5, :cond_21

    .line 864
    iput-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_15

    .line 866
    :cond_21
    iput-object v0, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 868
    :goto_15
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 869
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_16

    .line 872
    :cond_22
    iput-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    :cond_23
    :goto_16
    if-eqz v6, :cond_24

    .line 876
    iput-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto :goto_17

    .line 878
    :cond_24
    iput-object v0, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 882
    :cond_25
    :goto_17
    iput-boolean v14, v4, Lorg/telegram/messenger/ContactsController$Contact;->namesFilled:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/16 :goto_11

    .line 886
    :cond_26
    :try_start_10
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catch_1
    const/4 v3, 0x0

    .line 893
    :cond_27
    :try_start_11
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "has_phone_number = ?"

    const-string v4, "0"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v4, v23

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_32

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/String;

    const-string v4, ".*(\\+[0-9 \\-]+).*"

    .line 896
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 897
    :cond_28
    :goto_18
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "_id"

    .line 898
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "lookup"

    .line 899
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v5, "display_name"

    .line 900
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v10, :cond_29

    .line 902
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_28

    :cond_29
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2a

    goto :goto_18

    .line 905
    :cond_2a
    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    const-string v21, "contact_id = ?"

    new-array v11, v14, [Ljava/lang/String;

    aput-object v4, v11, v1

    const/16 v24, 0x0

    move-object/from16 v4, v23

    move-object/from16 v26, v5

    move-object/from16 v5, v18

    move-object/from16 v27, v6

    move-object/from16 v6, v19

    move-object/from16 v28, v7

    move-object/from16 v7, v21

    move-object/from16 v18, v8

    move-object v8, v11

    move-object v11, v9

    move-object/from16 v9, v24

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 910
    :cond_2b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "data1"

    .line 911
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v1

    const-string v4, "data2"

    .line 912
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v14

    const-string v4, "data3"

    .line 913
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v18, v5

    const-string v4, "data4"

    .line 914
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v18, v6

    const-string v4, "data5"

    .line 915
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v18, v7

    const/4 v4, 0x0

    :goto_19
    const/4 v8, 0x5

    if-ge v4, v8, :cond_2b

    .line 917
    aget-object v9, v18, v4

    if-nez v9, :cond_2c

    move-object/from16 v5, v28

    goto :goto_1a

    .line 920
    :cond_2c
    aget-object v9, v18, v4

    move-object/from16 v5, v28

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 921
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_2d

    .line 922
    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "-"

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1b

    :cond_2d
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v28, v5

    const/4 v5, 0x2

    goto :goto_19

    :cond_2e
    move-object/from16 v5, v28

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v4, 0x0

    .line 928
    :goto_1b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object/from16 v9, v20

    if-eqz v4, :cond_30

    .line 933
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2f

    .line 934
    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    goto :goto_1c

    :cond_2f
    move-object v6, v4

    .line 937
    :goto_1c
    new-instance v7, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v7}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    move-object/from16 v8, v26

    .line 938
    iput-object v8, v7, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 939
    iput-object v0, v7, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x1

    .line 940
    iput v2, v7, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    move-object/from16 v2, v27

    .line 941
    iput-object v2, v7, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 942
    iget-object v14, v7, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v4, v7, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    iget-object v4, v7, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v4, v7, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    sget v6, Lorg/telegram/messenger/R$string;->PhoneOther:I

    invoke-static {v12, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v8

    :cond_30
    move-object v7, v5

    move-object/from16 v20, v9

    move-object v9, v11

    move-object/from16 v8, v18

    const/4 v11, 0x2

    const/4 v14, 0x1

    goto/16 :goto_18

    :cond_31
    move-object v11, v9

    .line 952
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_32
    if-eqz v3, :cond_35

    .line 963
    :try_start_12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_20

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 966
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_20

    :catchall_3
    move-exception v0

    goto :goto_1d

    :catchall_4
    move-exception v0

    move-object/from16 v13, p0

    :goto_1d
    move-object v2, v10

    goto :goto_1e

    :catchall_5
    move-exception v0

    move-object v13, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 956
    :goto_1e
    :try_start_13
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_33

    .line 958
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :cond_33
    if-eqz v3, :cond_34

    .line 963
    :try_start_14
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_1f

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 966
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_34
    :goto_1f
    move-object v10, v2

    :cond_35
    :goto_20
    if-eqz v10, :cond_36

    goto :goto_21

    .line 986
    :cond_36
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :goto_21
    return-object v10

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_37

    .line 963
    :try_start_15
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_22

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 966
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 968
    :cond_37
    :goto_22
    throw v1
.end method

.method public reloadContactsStatusesMaybe()V
    .locals 6

    .line 1827
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastReloadStatusTime"

    const-wide/16 v2, 0x0

    .line 1828
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb80

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1830
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1833
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resetImportedContacts()V
    .locals 3

    .line 633
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetSaved;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetSaved;-><init>()V

    .line 634
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda67;->INSTANCE:Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda67;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public searchAccountByTel(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 7

    const-string v0, " "

    const-string v1, ""

    .line 82
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 83
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda55;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 88
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void

    .line 92
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v2, :cond_1

    .line 94
    iget-wide p1, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_1
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 98
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 99
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    const-wide/16 v5, 0x1

    .line 100
    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 101
    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 103
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda66;

    invoke-direct {v1, p0, v2, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p2, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    .line 123
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ContactsController;I)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 127
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 128
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p2, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/ContactsController;ILorg/telegram/ui/ActionBar/AlertDialog;)V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->searchAccountByTelTimeoutRunnable:Ljava/lang/Runnable;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    .line 132
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 128
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setDeleteAccountTTL(I)V
    .locals 0

    .line 2691
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    return-void
.end method

.method public setPrivacyRules(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;I)V"
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2765
    :pswitch_0
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->voiceMessagesRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2762
    :pswitch_1
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->addedByPhonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2759
    :pswitch_2
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2756
    :pswitch_3
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2753
    :pswitch_4
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2750
    :pswitch_5
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2747
    :pswitch_6
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2744
    :pswitch_7
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2741
    :pswitch_8
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    .line 2768
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2769
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public syncPhoneBookByAlert(Ljava/util/HashMap;ZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 556
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda37;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZ)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
