.class public Lorg/telegram/messenger/ContactsController;
.super Lorg/telegram/messenger/BaseController;
.source "ContactsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ContactsController$PhoneBookContact;,
        Lorg/telegram/messenger/ContactsController$Contact;,
        Lorg/telegram/messenger/ContactsController$MyContentObserver;
    }
.end annotation


# static fields
.field private static volatile Instance:[Lorg/telegram/messenger/ContactsController; = null

.field public static final PRIVACY_RULES_TYPE_ADDED_BY_PHONE:I = 0x7

.field public static final PRIVACY_RULES_TYPE_BIO:I = 0x9

.field public static final PRIVACY_RULES_TYPE_CALLS:I = 0x2

.field public static final PRIVACY_RULES_TYPE_COUNT:I = 0xa

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

.field private bioPrivacyRules:Ljava/util/ArrayList;
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
.method public static synthetic $r8$lambda$0Yse2Ktyi4door1777vi6lsKxeE(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$35(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0tO4duj1atF5IHMwYT-md4Bm224(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadGlobalPrivacySetting$62(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3IjGsSWZjHBGm6vGJVynhm-yzck(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Zu8rk87eRYpQZ3MiayP4gBVj7M(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$65(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$43Fq0ffVa_d4GSfEbNf-GT-wMqo(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$forceImportContacts$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$5poXqjc80EGaO3PNJVITXaecAyg(Ljava/text/Collator;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$updateUnregisteredContacts$45(Ljava/text/Collator;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6L9TCs9i2LaJ7jvejIpPe47rIS0(Lorg/telegram/messenger/ContactsController;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$39(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7AeeFWUyNWcLZ_TLsxHzaGJ9Vjo(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$deleteAllContacts$12(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ZEHw0oy9IAk__49LS37laJJQX0(Lorg/telegram/messenger/ContactsController;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$buildContactsSectionsArrays$46(Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8Rzj2oBFKy42Qip59rO_ItidZ2o(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$applyContactsUpdates$51(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ArlxAm0J3kjWDJ3PB0Inuso8I4(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$42(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9eaA4NQi4RU6slicyfU4VJyEG8E(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$addContact$55(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BNz1XaJfIRzqCe9lRYOwGSUwIQU(Lorg/telegram/messenger/ContactsController;ILjava/util/HashMap;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$17(ILjava/util/HashMap;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ceifj3qIPqJznM855-SFU7wy7ik(Lorg/telegram/messenger/ContactsController;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$loadContacts$31(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D2jv02gPK-qU8Eh0O7BEvw8910c(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$23(Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dl703TBvHeqNfetiO9JpyF5wYrw(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$34(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Dq-jUqVsv_jE6PhL5RSF7GPW1Rg(Lorg/telegram/messenger/ContactsController;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$66(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ehumd36fQp0q4h-pO0kt-gKujA8(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$loadContacts$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$IzXWzW52VBFez3hb2C7Ess_sbhA(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$18(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J-b0KqLquYisymnanFedrnAyTDU(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$checkContacts$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$KeaXU7M9KLKibFLB-t7erygcuDA(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$64(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4YFYOEp-W6zx28eWnwb0HzvnJc(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadGlobalPrivacySetting$61(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NERvhVGkhLAgoIBLv0LNOnnsnEo(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$26(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NRRlvWBDmNSYysfI1i_YQIMQ-nM(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$cleanup$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$NWVzNtNjgVwvzNysF4FC8spIL0Y(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$24(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OkWca6t5mA9LvHIRPSWoYZM2wSM(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$38(Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PVPCInkFzuf-t_2omb31KjGMAkk(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PVyOuw1poyBTT3Th9Y2nG7iK7OM(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$43(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pf4iNMo-R9pUsyIwAbVj98OFfCk(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$applyContactsUpdates$50()V

    return-void
.end method

.method public static synthetic $r8$lambda$Svs9Apr6it3Z2cmxCld97Irwqhk(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$addContact$54(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TyO1IDseFGRnjV5UwdvMJaKcNO0(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$deleteAllContacts$11(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VkjhnWpPfcx2G3p6F7gVmdLLZYs(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$20(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W3vLXQTIfgoSfA1Z5kYx0iWbFS4(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$37(Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZV1KAn_SwmiWG09dRrJEBz826Ow(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/ContactsController;->lambda$markAsContacted$52(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zp-fUPd0VogfAvTtNhabMsaKqBU(Lorg/telegram/messenger/ContactsController;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$2(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aABIR17fBHYItuldR4F460cHdy4(Lorg/telegram/messenger/ContactsController;ILorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$searchAccountByTel$3(ILorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cKRjKkcIwdAQW6umiYe94AGBYMI(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$syncPhoneBookByAlert$10(Ljava/util/HashMap;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$coAnSjsUFr2R7wY5D7qtGakA5V4(Lorg/telegram/messenger/ContactsController;Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ContactsController;->lambda$deleteContact$58(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezIyrZEF84DaHhyLAEnKCYoFgq4(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$checkInviteText$6(Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f8dBjE2QAtogIDeyukkaMsYB0Gw(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$44(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fubITNYOhiFGhmKhzIPPV3QBGSQ(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$25(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZ3A0WXOysghHyjDExBbmQUc7hc(Lorg/telegram/messenger/ContactsController;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$migratePhoneBookToV7$15(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hu2Q7u_xfSV6I2OpsB98LbxS2wU(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$addContact$53(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ilOCcs2exKm7gWGf72IryKsAEvs(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$deleteContact$56(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kKfpObBv0pn3SAMHcqsml1t9HV8(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$kLVZFZFnFbKSxFUF3Yq5phXlNFM(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$buildContactsSectionsArrays$47(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kM6UjViFQNzQbfSx7VZq8yf-8NI(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$28(Ljava/util/HashMap;ZZZZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKNNQvrrd9clMarA4XF--8B-xBU(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$27(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lSjtqr_gxq2wTHdDeQ_8Nlwp39U(Ljava/text/Collator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$mergePhonebookAndTelegramContacts$41(Ljava/text/Collator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ldI7M0g9ZJXq__PQCM2-pxaGNqQ(Lorg/telegram/messenger/ContactsController;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$applyContactsUpdates$49(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mJfcvizGFBQ_gHLFqNYZ59OwaU0(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZZ)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$36(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$nY_wz0kG4xajB_jiBQAI-6TKD-U(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$readContacts$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$nyuurZw-m3AjZef05LHp62LaB3Y(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$22(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pQ8JWqTTL6UY-1LQLf1L7jbvNHk(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$qxbMa3MQk34VH_qMm-5qu_by_7o(Landroidx/collection/LongSparseArray;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$33(Landroidx/collection/LongSparseArray;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r6avGYV7uMh7KuZ9vAJ9GZT0DVg(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$40(Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnScOENAslJTkak4Qt9jZl72fHE(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$reloadContactsStatuses$59(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tP_ljapGd-Ca-_SEYnQrlXj4o50(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$performWriteContactsToPhoneBook$48(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ub4eiXMqFuQXe5t6Z8ZHM-0gWhA(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->lambda$reloadContactsStatuses$60(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqTUKVIZiTkSt4rH0dWWWSm3bMc(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->lambda$processLoadedContacts$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$v_HFDZwycr8XB4Or6aku3YrCo9E(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$loadPrivacySettings$63(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_OSvrojuuzwtlwL85130zkh1gs(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ContactsController;->lambda$checkInviteText$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7icrJJ9ow5jmuj6T2yPXj42AD4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$resetImportedContacts$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x7jjBmpI76rlESL0DTbVctK-Y4c(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ZLjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->lambda$deleteContact$57(Ljava/util/ArrayList;ZLjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zAeHJ45ObaHyxskRPCq7NiImHcw(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/ContactsController;->lambda$getContactsHash$29(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zfTYZDeqarIlIfsuqWKCtInnjV4(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/messenger/ContactsController;->lambda$performSyncPhoneBook$19(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/telegram/messenger/ContactsController;

    .line 314
    sput-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 329
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersNotMutualSectionsDict:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersNotMutualSectionsArray:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    const-string v0, ""

    .line 140
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 149
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    const-string/jumbo v1, "lookup"

    const-string v2, "data1"

    const-string v3, "data2"

    const-string v4, "data3"

    const-string v5, "display_name"

    const-string v6, "account_type"

    .line 280
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const-string/jumbo v0, "lookup"

    const-string v1, "data2"

    const-string v2, "data3"

    const-string v3, "data5"

    .line 288
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    .line 330
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "needGetStatuses"

    const/4 v2, 0x0

    .line 331
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c0"

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d9"

    const-string v2, "U"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00da"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00dc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cc"

    const-string v2, "I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c8"

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00ca"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00cb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d2"

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00c7"

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00d1"

    const-string v2, "N"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u0178"

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u00dd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    const-string/jumbo v1, "\u0162"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 358
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/ContactsController;)Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/ContactsController;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    return p0
.end method

.method private applyContactToPhoneBook(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    return-void

    .line 2356
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2357
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 2358
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v6, "account_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2359
    iget-object v5, v0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "account_type"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2360
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    goto :goto_0

    :cond_1
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    :goto_0
    const-string/jumbo v6, "sync1"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2361
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string/jumbo v6, "sync2"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2362
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2364
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string/jumbo v5, "raw_contact_id"

    .line 2365
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/name"

    .line 2366
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2367
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    const-string v8, "data2"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2368
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    const-string v9, "data3"

    invoke-virtual {v4, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2369
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2373
    :goto_1
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2374
    invoke-virtual {v7, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v10, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.profile"

    const-string/jumbo v11, "org.telegram.messenger"

    const-string v12, "com.iMe.android"

    .line 2375
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2376
    iget-wide v13, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v13, "data1"

    invoke-virtual {v7, v13, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v10, "Telegram Profile"

    const-string v14, "Telegram"

    const-string v15, "iMe"

    .line 2377
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2378
    sget v10, Lorg/telegram/messenger/R$string;->ContactShortcutMessage:I

    const/4 v0, 0x1

    move-object/from16 v16, v8

    new-array v8, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v4, v8, v17

    const-string v0, "ContactShortcutMessage"

    invoke-static {v0, v10, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-object v0, v9

    .line 2379
    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "data4"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2380
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2382
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2383
    invoke-virtual {v7, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v8, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.call"

    .line 2384
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-object v8, v11

    .line 2385
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v13, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v10, "Telegram Voice Call"

    .line 2386
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v16

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2387
    sget v10, Lorg/telegram/messenger/R$string;->ContactShortcutVoiceCall:I

    move-object/from16 v18, v14

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;

    aput-object v4, v14, v17

    const-string v11, "ContactShortcutVoiceCall"

    invoke-static {v11, v10, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2388
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2389
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2391
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 2392
    invoke-virtual {v7, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v3, "vnd.android.cursor.item/vnd.org.telegram.messenger.android.call.video"

    .line 2393
    invoke-virtual {v3, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2394
    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v13, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "Telegram Video Call"

    move-object/from16 v5, v18

    .line 2395
    invoke-virtual {v3, v5, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v16

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2396
    sget v3, Lorg/telegram/messenger/R$string;->ContactShortcutVideoCall:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v17

    const-string v4, "ContactShortcutVideoCall"

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2397
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 2398
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
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

    .line 2155
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2156
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 2157
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2159
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 2160
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2161
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2162
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2163
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 2164
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

    .line 2168
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 2169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process update - contacts add = "

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

    .line 2172
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    move v3, v2

    .line 2176
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, ","

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v2, v4, :cond_b

    .line 2177
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz p2, :cond_5

    .line 2180
    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p2, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    :cond_5
    if-nez v7, :cond_6

    .line 2183
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    goto :goto_3

    .line 2185
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :goto_3
    if-eqz v7, :cond_a

    .line 2187
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    .line 2192
    :cond_7
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v4, :cond_8

    .line 2194
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v6, :cond_8

    .line 2196
    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2199
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_9

    .line 2200
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    :cond_9
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    :goto_4
    move v3, v8

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2205
    :cond_b
    :goto_6
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 2206
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2207
    sget-object v4, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda16;

    invoke-direct {v9, p0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Long;)V

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_c

    .line 2211
    invoke-virtual {p2, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_7

    :cond_c
    move-object v4, v7

    :goto_7
    if-nez v4, :cond_d

    .line 2214
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    goto :goto_8

    .line 2216
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    :goto_8
    if-nez v4, :cond_e

    move v3, v8

    goto :goto_9

    .line 2223
    :cond_e
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2224
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_f

    .line 2226
    iget-object v9, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-eq v9, v6, :cond_f

    .line 2228
    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2231
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_10

    .line 2232
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    :cond_10
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2238
    :cond_12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_13

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_14

    .line 2239
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

    .line 2243
    sget-object p1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 2247
    :cond_15
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0, p3, p4}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_a
    return-void
.end method

.method private buildContactsSectionsArrays(Z)V
    .locals 8

    .line 2002
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2004
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/text/Collator;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2013
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2014
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 2016
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2017
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 2018
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 2023
    :cond_1
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 2024
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 2025
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2027
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    const-string v5, "#"

    goto :goto_1

    .line 2030
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2032
    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object v5, v6

    .line 2036
    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 2038
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2039
    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2042
    :cond_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2045
    :cond_6
    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda49;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda49;-><init>(Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2056
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 2057
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    return-void
.end method

.method private checkContactsInternal()Z
    .locals 9

    const-string/jumbo v0, "version"

    const/4 v1, 0x0

    .line 636
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 639
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 640
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

    .line 642
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 650
    :cond_2
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 640
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

    .line 652
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 653
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 656
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return v1
.end method

.method private deleteContactFromPhoneBook(J)V
    .locals 5

    .line 2402
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2405
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2406
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2407
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 2409
    :try_start_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2410
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string/jumbo v4, "true"

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

    .line 2411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync2 = "

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

    .line 2413
    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 2415
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2416
    :try_start_2
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2417
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

    .line 2407
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2990
    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    .line 2998
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, " "

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    if-lez p2, :cond_1

    .line 3000
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3001
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    .line 3002
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3003
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object p1, v2

    :cond_1
    if-eqz p1, :cond_2

    .line 3006
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3008
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3009
    sget v3, Lorg/telegram/messenger/LocaleController;->nameDisplayOrder:I

    const-string/jumbo v5, "\u2026"

    if-ne v3, v4, :cond_9

    if-eqz p0, :cond_7

    .line 3010
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    if-lez p2, :cond_5

    .line 3011
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p2, 0x2

    if-le v3, v4, :cond_5

    .line 3012
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3014
    :cond_5
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_e

    .line 3015
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_e

    .line 3016
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_6

    .line 3017
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p0, v0

    if-le p0, p2, :cond_6

    .line 3018
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3020
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    if-eqz p1, :cond_e

    .line 3023
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_e

    if-lez p2, :cond_8

    .line 3024
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v0, p2, 0x2

    if-le p0, v0, :cond_8

    .line 3025
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3027
    :cond_8
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_9
    if-eqz p1, :cond_c

    .line 3030
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    if-lez p2, :cond_a

    .line 3031
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, p2, 0x2

    if-le v3, v4, :cond_a

    .line 3032
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3034
    :cond_a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_e

    .line 3035
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    .line 3036
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p2, :cond_b

    .line 3037
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    if-le p1, p2, :cond_b

    .line 3038
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3040
    :cond_b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    if-eqz p0, :cond_e

    .line 3043
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_e

    if-lez p2, :cond_d

    .line 3044
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 v0, p2, 0x2

    if-le p1, v0, :cond_d

    .line 3045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3047
    :cond_d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    :cond_e
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;
    .locals 1

    .line 2972
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 2973
    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p0}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2974
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 2975
    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2976
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "DELETED"

    return-object p0
.end method

.method public static formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2986
    :cond_0
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

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1550
    sget-object p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;->INSTANCE:Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1558
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    if-ge v4, p1, :cond_1

    if-ne v4, v1, :cond_0

    .line 1561
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    iget v5, v5, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Lorg/telegram/messenger/MediaDataController;->calcHash(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 1563
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1564
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

    .line 316
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 318
    const-class v1, Lorg/telegram/messenger/ContactsController;

    monitor-enter v1

    .line 319
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lorg/telegram/messenger/ContactsController;->Instance:[Lorg/telegram/messenger/ContactsController;

    new-instance v2, Lorg/telegram/messenger/ContactsController;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController;-><init>(I)V

    aput-object v2, v0, p0

    move-object v0, v2

    .line 323
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

    .line 211
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollatorLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 213
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollatorLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    .line 214
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 219
    :cond_1
    :goto_0
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    if-nez v0, :cond_2

    .line 221
    :try_start_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    .line 222
    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 224
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    .line 227
    :cond_2
    :goto_1
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    if-nez v0, :cond_3

    .line 228
    new-instance v0, Lorg/telegram/messenger/ContactsController$1;

    invoke-direct {v0}, Lorg/telegram/messenger/ContactsController$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    .line 246
    :cond_3
    sget-object v0, Lorg/telegram/messenger/ContactsController;->cachedCollator:Ljava/text/Collator;

    return-object v0
.end method

.method private hasContactsPermission()Z
    .locals 10

    .line 2061
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    .line 2062
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    .line 2066
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2067
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2068
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    goto :goto_1

    .line 2076
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

    .line 2079
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return v2

    :catchall_0
    move-exception v2

    .line 2072
    :try_start_3
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 2076
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2079
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return v1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 2076
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 2079
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2081
    :cond_6
    :goto_4
    throw v1
.end method

.method private hasContactsWritePermission()Z
    .locals 3

    .line 2086
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 2087
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isNotValidNameString(Ljava/lang/String;)Z
    .locals 7

    .line 681
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 685
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 686
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
    move v1, v2

    :goto_1
    return v1
.end method

.method private synthetic lambda$addContact$53(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x1

    .line 2468
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/ContactsController;->addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J

    return-void
.end method

.method private synthetic lambda$addContact$54(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 2489
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2490
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 2491
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

    .line 2494
    :cond_0
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2495
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2496
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2497
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

    .line 2499
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    .line 2500
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$addContact$55(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-eqz p3, :cond_0

    return-void

    .line 2453
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2454
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->personal:Z

    if-eqz p3, :cond_2

    move p3, v0

    .line 2455
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_2

    .line 2456
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 2457
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2461
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    move p3, v0

    .line 2463
    :goto_1
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    .line 2464
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2465
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    goto :goto_2

    .line 2468
    :cond_3
    sget-object v2, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda43;

    invoke-direct {v3, p0, v1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2469
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2470
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2471
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2472
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2473
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 2475
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2476
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2477
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    iget-object v2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_4

    .line 2480
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 2482
    iget-object v2, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2488
    :cond_5
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$applyContactsUpdates$49(Ljava/lang/Long;)V
    .locals 2

    .line 2207
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContactFromPhoneBook(J)V

    return-void
.end method

.method private synthetic lambda$applyContactsUpdates$50()V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 2243
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    return-void
.end method

.method private synthetic lambda$applyContactsUpdates$51(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    .line 2248
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2249
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 2250
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2251
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2255
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2256
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2257
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v3, :cond_2

    .line 2259
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2260
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2263
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 2264
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 2265
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBook()V

    .line 2267
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

    .line 2268
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    .line 2269
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$buildContactsSectionsArrays$46(Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 3

    .line 2005
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    .line 2006
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 2007
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 2008
    invoke-static {p3}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p3

    .line 2009
    invoke-virtual {p1, p2, p3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private static synthetic lambda$buildContactsSectionsArrays$47(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 2046
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2047
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

    .line 2053
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkContacts$8()V
    .locals 9

    .line 531
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "detected contacts change"

    .line 533
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 535
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

.method private synthetic lambda$checkInviteText$6(Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V
    .locals 5

    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteLink:Z

    .line 424
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;->message:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->inviteLink:Ljava/lang/String;

    const-string v1, "invitelink"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p1, v1

    const-string v1, "invitelinktime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private synthetic lambda$checkInviteText$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 420
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;

    .line 421
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;->message:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 422
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda41;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_help_inviteText;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$cleanup$5()V
    .locals 1

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    .line 407
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    return-void
.end method

.method private synthetic lambda$deleteAllContacts$11(Ljava/lang/Runnable;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "com.iMe.android"

    const-string v2, ""

    const-string/jumbo v3, "org.telegram.messenger"

    .line 577
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 579
    :try_start_0
    invoke-virtual {v3, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 580
    iput-object v5, v0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    move v8, v6

    .line 581
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_2

    .line 582
    aget-object v9, v7, v8

    move v10, v6

    :goto_1
    const/4 v11, 0x5

    if-ge v10, v11, :cond_1

    .line 584
    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 586
    iget-object v12, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 587
    invoke-virtual {v4, v9, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 597
    :catchall_0
    :cond_2
    :try_start_1
    new-instance v7, Landroid/accounts/Account;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 598
    invoke-virtual {v4, v7, v2, v5}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 602
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v6, v3}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    .line 603
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 604
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 605
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 606
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 607
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 608
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 609
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 610
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 611
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 612
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 613
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 614
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 615
    iget-object v1, v0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 616
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    .line 617
    invoke-virtual {v0, v6, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    .line 618
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$deleteAllContacts$12(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p3, :cond_0

    .line 567
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 568
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    const/4 p2, 0x0

    .line 569
    iput p2, p0, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    .line 570
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    .line 571
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 572
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 573
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 574
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    const-string p2, ""

    .line 575
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 576
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 621
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$deleteContact$56(Ljava/util/ArrayList;)V
    .locals 2

    .line 2540
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 2541
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContactFromPhoneBook(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteContact$57(Ljava/util/ArrayList;ZLjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 7

    .line 2562
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 2563
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v4, :cond_0

    .line 2566
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2567
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2571
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V

    .line 2573
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

    .line 2574
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 2576
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

    .line 2580
    invoke-interface {p4, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$deleteContact$58(Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-eqz p7, :cond_1

    if-eqz p1, :cond_0

    .line 2532
    new-instance p2, Ljava/lang/Exception;

    iget-object p3, p7, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 2537
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p7

    check-cast p6, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p7, p6, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2538
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p6

    invoke-virtual {p6, p2}, Lorg/telegram/messenger/MessagesStorage;->deleteContacts(Ljava/util/ArrayList;)V

    .line 2539
    sget-object p2, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p6, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda18;

    invoke-direct {p6, p0, p3}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 2545
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    .line 2546
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 2547
    iget-object p6, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_2

    goto :goto_1

    .line 2550
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p6

    iget-object p7, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p6, p7, v1}, Lorg/telegram/messenger/MessagesStorage;->applyPhoneBookUpdates(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    iget-object p6, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    iget-object p7, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p6, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p6, :cond_3

    .line 2553
    iget-object p7, p6, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p7, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 p7, -0x1

    if-eq p2, p7, :cond_3

    .line 2555
    iget-object p6, p6, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 p7, 0x1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p6, p2, p7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2560
    :cond_4
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda24;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ZLjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$forceImportContacts$9()V
    .locals 9

    .line 542
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "force import contacts"

    .line 543
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 545
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

.method private static synthetic lambda$getContactsHash$29(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 3

    .line 1551
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    iget-wide p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$loadContacts$30()V
    .locals 3

    .line 1598
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1599
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 1600
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1600
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$loadContacts$31(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-nez p4, :cond_3

    .line 1588
    check-cast p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1589
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_contactsNotModified;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1590
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1591
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p1, :cond_0

    .line 1592
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p3, p3}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1593
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-wide/16 v0, 0x3e8

    div-long/2addr p3, v0

    long-to-int p3, p3

    iput p3, p1, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1596
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1597
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1603
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "load contacts don\'t change"

    .line 1604
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1608
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget p4, p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->saved_count:I

    iput p4, p1, Lorg/telegram/messenger/UserConfig;->contactsSavedCount:I

    .line 1609
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1611
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->contacts:Ljava/util/ArrayList;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p3, p2}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$loadGlobalPrivacySetting$61(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2637
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->globalPrivacySettings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    const/4 p1, 0x2

    .line 2638
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    goto :goto_0

    .line 2640
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    .line 2642
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$loadGlobalPrivacySetting$62(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2635
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadPrivacySettings$63(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2653
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 2654
    iget p1, p2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    iput p1, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    const/4 p1, 0x2

    .line 2655
    iput p1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    goto :goto_0

    .line 2657
    :cond_0
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 2659
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

    .line 2651
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadPrivacySettings$65(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2708
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    .line 2709
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2710
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    packed-switch p3, :pswitch_data_0

    .line 2742
    :pswitch_0
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->addedByPhonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2729
    :pswitch_1
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->bioPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2738
    :pswitch_2
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->voiceMessagesRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2735
    :pswitch_3
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2732
    :pswitch_4
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2726
    :pswitch_5
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2723
    :pswitch_6
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2720
    :pswitch_7
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2717
    :pswitch_8
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2714
    :pswitch_9
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    .line 2745
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    const/4 p2, 0x2

    aput p2, p1, p3

    goto :goto_1

    .line 2747
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    aput v0, p1, p3

    .line 2749
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic lambda$loadPrivacySettings$66(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2706
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$markAsContacted$52(Ljava/lang/String;)V
    .locals 3

    .line 2425
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2426
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "last_time_contacted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2428
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    .line 2429
    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$mergePhonebookAndTelegramContacts$41(Ljava/text/Collator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1907
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1908
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1909
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1910
    :cond_0
    instance-of v0, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v0, :cond_2

    .line 1911
    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1912
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 1913
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1915
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 1921
    :goto_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    .line 1922
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1923
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1924
    :cond_3
    instance-of v0, p2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v0, :cond_5

    .line 1925
    check-cast p2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1926
    iget-object v0, p2, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    .line 1927
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1929
    :cond_4
    iget-object v0, p2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    move-object v1, p2

    .line 1935
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$mergePhonebookAndTelegramContacts$42(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1939
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1940
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

    .line 1946
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$mergePhonebookAndTelegramContacts$43(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1949
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 1950
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$mergePhonebookAndTelegramContacts$44(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 7

    .line 1879
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 1880
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1881
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1882
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1885
    :cond_0
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1886
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v4, :cond_1

    .line 1888
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_3

    .line 1889
    iput-object v3, v4, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_1

    .line 1892
    :cond_1
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController$Contact;->getLetter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1893
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_2

    .line 1895
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1896
    invoke-virtual {p3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1902
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object p1

    .line 1903
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

    .line 1904
    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda51;

    invoke-direct {v1, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda51;-><init>(Ljava/text/Collator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1938
    :cond_5
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda47;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda47;-><init>(Ljava/text/Collator;)V

    invoke-static {p4, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1948
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0, p4, p3}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$migratePhoneBookToV7$15(Landroid/util/SparseArray;)V
    .locals 8

    .line 1032
    iget-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->migratingContacts:Z

    .line 1036
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1037
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;

    move-result-object v2

    .line 1038
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1039
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

    .line 1040
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1041
    :goto_0
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1042
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    .line 1045
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 1046
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    move v6, v5

    .line 1047
    :goto_2
    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 1048
    iget-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1049
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 1051
    iput-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 1052
    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1057
    :cond_5
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_6

    .line 1058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrated contacts "

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

    .line 1060
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v5}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 4

    .line 360
    :try_start_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
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

.method private synthetic lambda$performSyncPhoneBook$16(Ljava/util/HashMap;)V
    .locals 8

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 1279
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1281
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v3, v1

    .line 1283
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1284
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1285
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1286
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 1289
    :cond_0
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1292
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

    .line 1293
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ContactsController$Contact;

    move v4, v1

    move v5, v4

    .line 1295
    :goto_3
    iget-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1296
    iget-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1297
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 1300
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    move v5, v7

    :cond_4
    add-int/2addr v4, v7

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_3

    .line 1305
    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1310
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1314
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1315
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;Z)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$17(ILjava/util/HashMap;ZZ)V
    .locals 4

    .line 1383
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

.method private synthetic lambda$performSyncPhoneBook$18(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1

    .line 1400
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1401
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 1402
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1403
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$19(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1

    .line 1387
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1388
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1389
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 v0, 0x1

    .line 1390
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1392
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1394
    :cond_0
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p3, :cond_1

    .line 1395
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0, v0}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1396
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1398
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p1}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    .line 1399
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$20(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1488
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1489
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$21()V
    .locals 2

    .line 1492
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook(Z)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$22(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V
    .locals 0

    .line 1476
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1477
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1478
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 p2, 0x1

    .line 1479
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1481
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1483
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p2, :cond_1

    .line 1484
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p3}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1485
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1487
    :cond_1
    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1491
    aget-boolean p1, p7, p1

    if-eqz p1, :cond_2

    .line 1492
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const-wide/32 p3, 0x493e0

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$23(Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    move-object v9, p0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p13

    .line 1424
    iget v4, v9, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v9, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 1426
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_0

    const-string v2, "contacts imported"

    .line 1427
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1429
    :cond_0
    move-object/from16 v2, p12

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 1430
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 1431
    :goto_0
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 1432
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-int v6, v6

    .line 1433
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1435
    :cond_1
    aput-boolean v5, p3, v4

    .line 1436
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "result has retry contacts"

    .line 1437
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    move v3, v4

    .line 1440
    :goto_1
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1441
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_popularContact;

    .line 1442
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->client_id:J

    long-to-int v7, v7

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v7, :cond_3

    .line 1444
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_popularContact;->importers:I

    iput v6, v7, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v8, p4

    .line 1453
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 1455
    :goto_2
    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1456
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1457
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->user_id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 1458
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1460
    :cond_5
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_4

    :cond_6
    move-object/from16 v8, p4

    move v6, v4

    .line 1462
    :goto_3
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1463
    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    .line 1464
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    long-to-int v7, v10

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1466
    :cond_7
    aput-boolean v5, p3, v4

    .line 1467
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_8

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "import contacts error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1471
    :cond_8
    :goto_4
    iget v1, v9, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    move/from16 v2, p6

    if-ne v1, v2, :cond_a

    .line 1472
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1473
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    .line 1475
    :cond_9
    sget-object v10, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda35;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    move/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;[Z)V

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$24(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1

    .line 1512
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1513
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 1514
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1515
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$25(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1501
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1502
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 p1, 0x1

    .line 1503
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1505
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1507
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p1, :cond_1

    .line 1508
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1509
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1511
    :cond_1
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$26(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1532
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/ContactsController;->mergePhonebookAndTelegramContacts(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$27(Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1521
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    .line 1522
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 1523
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    const/4 p1, 0x1

    .line 1524
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz p3, :cond_0

    .line 1526
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 1528
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz p1, :cond_1

    .line 1529
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1530
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1532
    :cond_1
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, p4, p5, p6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$performSyncPhoneBook$28(Ljava/util/HashMap;ZZZZZZ)V
    .locals 28

    move-object/from16 v13, p0

    move-object/from16 v3, p1

    .line 1095
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1096
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

    .line 1097
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1098
    :goto_0
    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_0

    .line 1099
    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1103
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "start read contacts from phone"

    .line 1104
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    if-nez p2, :cond_3

    .line 1107
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z

    .line 1109
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;

    move-result-object v14

    .line 1110
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1111
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1112
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1114
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

    .line 1115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1116
    iget-object v4, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v8

    :goto_2
    if-ge v5, v4, :cond_4

    .line 1117
    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1118
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

    .line 1121
    :cond_4
    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController$Contact;->getLetter()Ljava/lang/String;

    move-result-object v4

    .line 1122
    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_5

    .line 1124
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    invoke-virtual {v15, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_5
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1131
    :cond_6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1132
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 1134
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const-string v5, ""

    if-nez v2, :cond_29

    .line 1136
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v8

    move/from16 v16, v7

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 1137
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Ljava/lang/String;

    .line 1138
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1139
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/ContactsController$Contact;

    move-object/from16 p5, v2

    if-nez v17, :cond_8

    .line 1141
    :goto_4
    iget-object v2, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_8

    .line 1142
    iget-object v2, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v2, :cond_7

    .line 1145
    iget-object v6, v2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v2, v17

    :goto_5
    if-eqz v2, :cond_9

    .line 1151
    iget v8, v2, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    iput v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    :cond_9
    if-eqz v2, :cond_c

    .line 1154
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

    .line 1192
    :goto_8
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_1c

    .line 1193
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1194
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

    .line 1195
    invoke-virtual {v10, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-object v12, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    if-eqz p3, :cond_12

    move/from16 v24, v12

    .line 1199
    iget-object v12, v13, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v12, :cond_11

    move-object/from16 v25, v11

    .line 1201
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

    .line 1204
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

    .line 1209
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

    .line 1216
    iget-object v11, v13, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v8, :cond_18

    .line 1218
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_17

    add-int/lit8 v16, v16, 0x1

    .line 1221
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v8, :cond_14

    goto :goto_c

    :cond_14
    move-object/from16 v8, v23

    .line 1222
    :goto_c
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    move-object/from16 v5, v23

    .line 1223
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

    .line 1229
    :cond_18
    iget-object v8, v13, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    add-int/lit8 v16, v16, 0x1

    .line 1234
    :cond_19
    :goto_e
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1235
    iget v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v11, v8

    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v14, v0

    const/16 v8, 0x20

    shl-long/2addr v14, v8

    or-long/2addr v11, v14

    .line 1236
    iput-wide v11, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1237
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1238
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1239
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1240
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1243
    :cond_1a
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v8, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v5, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1245
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1246
    iget-object v5, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1247
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

    .line 1250
    iget-object v0, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1251
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

    .line 1156
    :goto_11
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_23

    .line 1157
    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1158
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x7

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1159
    invoke-virtual {v10, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1e

    .line 1161
    iget-object v11, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1f

    .line 1163
    iget-object v14, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1164
    iget-object v14, v4, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v14, v5, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1165
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

    .line 1172
    iget-object v11, v13, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    add-int/lit8 v16, v16, 0x1

    goto :goto_12

    :cond_20
    add-int/lit8 v7, v7, 0x1

    .line 1179
    :cond_21
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1180
    iget v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v14, v11

    iput-wide v14, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v12, v5

    const/16 v11, 0x20

    shl-long/2addr v12, v11

    or-long v11, v14, v12

    .line 1181
    iput-wide v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1182
    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1183
    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1184
    iget-object v11, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v8, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1185
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, p0

    goto :goto_11

    :cond_23
    if-eqz v2, :cond_24

    .line 1189
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

    .line 1255
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v1, v0, :cond_27

    .line 1256
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_26

    const-string v0, "contacts not changed!"

    .line 1257
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_26
    return-void

    :cond_27
    if-eqz p3, :cond_28

    .line 1261
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1262
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1263
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

    .line 1321
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

    .line 1322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v2, 0x0

    .line 1324
    :goto_16
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_31

    if-nez p5, :cond_2f

    .line 1326
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1327
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v14, p0

    .line 1328
    iget-object v7, v14, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v5, :cond_2e

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_30

    add-int/lit8 v16, v16, 0x1

    .line 1333
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v6, :cond_2a

    goto :goto_17

    :cond_2a
    move-object/from16 v6, v23

    .line 1334
    :goto_17
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v5, :cond_2b

    goto :goto_18

    :cond_2b
    move-object/from16 v5, v23

    .line 1335
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

    .line 1339
    :cond_2e
    iget-object v5, v14, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    add-int/lit8 v16, v16, 0x1

    goto :goto_19

    :cond_2f
    move-object/from16 v14, p0

    .line 1343
    :cond_30
    :goto_19
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 1344
    iget v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    int-to-long v6, v6

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    int-to-long v11, v2

    const/16 v8, 0x20

    shl-long/2addr v11, v8

    or-long/2addr v6, v11

    .line 1345
    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 1346
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 1347
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 1348
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 1349
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

    .line 1354
    :goto_1c
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_34

    const-string v2, "done processing contacts"

    .line 1355
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_34
    if-eqz p3, :cond_3d

    .line 1359
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1360
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_35

    const-string/jumbo v2, "start import contacts"

    .line 1361
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

    .line 1371
    iget-object v1, v14, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v4, v14, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v2

    if-le v1, v4, :cond_37

    goto :goto_1d

    :cond_37
    const/4 v2, 0x0

    .line 1379
    :goto_1d
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_38

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "new phone book contacts "

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

    .line 1383
    new-instance v6, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda12;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/ContactsController;ILjava/util/HashMap;ZZ)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_39
    if-eqz p7, :cond_3a

    .line 1386
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

    .line 1410
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1411
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 1412
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

    .line 1413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1414
    iget v2, v1, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1e

    :cond_3b
    const/4 v1, 0x0

    .line 1416
    iput v1, v14, Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I

    .line 1417
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

    .line 1419
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    mul-int/lit16 v0, v7, 0x1f4

    add-int/lit16 v1, v0, 0x1f4

    .line 1421
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1422
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v6, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v4, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda62;

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

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Landroid/util/SparseArray;[ZLjava/util/HashMap;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;ILjava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

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

    .line 1499
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda32;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v13

    move/from16 v4, p4

    move-object/from16 v5, v27

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_20

    :cond_3d
    move-object/from16 v19, v10

    move-object/from16 v21, v25

    .line 1520
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

    .line 1534
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;ZZ)V

    :cond_3e
    :goto_20
    return-void
.end method

.method private synthetic lambda$performWriteContactsToPhoneBook$48(Ljava/util/ArrayList;)V
    .locals 0

    .line 2150
    invoke-direct {p0, p1}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$processLoadedContacts$32()V
    .locals 3

    const/4 v0, 0x1

    .line 1655
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    .line 1656
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$processLoadedContacts$33(Landroidx/collection/LongSparseArray;Ljava/text/Collator;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 1691
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1692
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1693
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    .line 1694
    invoke-static {p0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    .line 1695
    invoke-virtual {p1, p2, p0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$processLoadedContacts$34(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1773
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1774
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

    .line 1780
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$processLoadedContacts$35(Ljava/text/Collator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 1784
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1785
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

    .line 1791
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$processLoadedContacts$36(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZZ)V
    .locals 0

    .line 1797
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->usersNotMutualSectionsDict:Ljava/util/HashMap;

    .line 1798
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersNotMutualSectionsArray:Ljava/util/ArrayList;

    .line 1800
    iput-object p3, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 1801
    iput-object p4, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    .line 1802
    iput-object p5, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 1803
    iput-object p6, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    .line 1804
    iput-object p7, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 1805
    iput-object p8, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 1806
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-eq p9, p3, :cond_0

    .line 1808
    iget-object p3, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter p3

    .line 1809
    :try_start_0
    iput-boolean p2, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 1810
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1812
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->performWriteContactsToPhoneBook()V

    .line 1813
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->updateUnregisteredContacts()V

    .line 1815
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    new-array p5, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p4, p5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    if-eq p9, p1, :cond_1

    if-nez p10, :cond_1

    .line 1818
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    goto :goto_1

    .line 1820
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatusesMaybe()V

    :goto_1
    if-eqz p11, :cond_2

    const-wide/16 p3, 0x0

    .line 1823
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$processLoadedContacts$37(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    .line 1836
    iput-object p2, p0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    return-void
.end method

.method private synthetic lambda$processLoadedContacts$38(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2

    .line 1834
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1838
    iget-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1841
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 1842
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->getCachedPhoneBook(Z)V

    return-void
.end method

.method private synthetic lambda$processLoadedContacts$39(ILjava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V
    .locals 19

    move-object/from16 v13, p0

    move/from16 v10, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p4

    .line 1648
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    const-string v1, "done loading contacts"

    .line 1649
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_2

    .line 1651
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

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 1652
    :cond_1
    invoke-direct {v13, v4}, Lorg/telegram/messenger/ContactsController;->getContactsHash(Ljava/util/ArrayList;)J

    move-result-wide v5

    invoke-virtual {v13, v3, v5, v6}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1654
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda10;

    invoke-direct {v0, v13}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-nez v10, :cond_3

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v1

    long-to-int v1, v6

    iput v1, v5, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_3
    move v1, v3

    move v12, v1

    .line 1667
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1668
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1669
    iget v5, v13, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-nez v5, :cond_4

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_4

    .line 1670
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    move v12, v14

    :cond_4
    add-int/2addr v1, v14

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    const/4 v15, 0x0

    if-eq v10, v14, :cond_7

    .line 1685
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v5, p3

    invoke-virtual {v2, v5, v15, v14, v14}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    if-eq v10, v1, :cond_6

    move v5, v14

    goto :goto_1

    :cond_6
    move v5, v3

    :goto_1
    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 1689
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object v2

    .line 1690
    new-instance v5, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda45;

    invoke-direct {v5, v0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda45;-><init>(Landroidx/collection/LongSparseArray;Ljava/text/Collator;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1699
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1700
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    new-instance v7, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x14

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 1703
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1704
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1705
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1710
    iget-boolean v15, v13, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v15, :cond_8

    .line 1711
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1712
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v14, v16

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1718
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_13

    .line 1719
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_contact;

    move-object/from16 p3, v2

    move/from16 v18, v3

    .line 1720
    iget-wide v2, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_9

    move-object/from16 v17, v14

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1724
    :cond_9
    iget-wide v3, v10, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3, v10}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v15, :cond_a

    .line 1725
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1726
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v15, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    .line 1730
    :goto_3
    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    .line 1731
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v17, v14

    const/4 v14, 0x1

    if-le v4, v14, :cond_b

    .line 1732
    invoke-virtual {v3, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1734
    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    const-string v3, "#"

    goto :goto_4

    .line 1737
    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1739
    :goto_4
    iget-object v4, v13, Lorg/telegram/messenger/ContactsController;->sectionsToReplace:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object v3, v4

    .line 1743
    :cond_d
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_e

    .line 1745
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    :cond_e
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v4, :cond_10

    .line 1751
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_f

    .line 1753
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1754
    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    :cond_f
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1760
    :cond_10
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-nez v2, :cond_12

    .line 1761
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_11

    .line 1763
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1764
    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    :cond_11
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_5
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v14, v17

    goto/16 :goto_2

    :cond_13
    move-object/from16 p3, v2

    move-object/from16 v17, v14

    .line 1772
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda48;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda48;-><init>(Ljava/text/Collator;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1783
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;

    invoke-direct {v0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda46;-><init>(Ljava/text/Collator;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1795
    new-instance v14, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;

    move-object v0, v14

    move-object v10, v1

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p2

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v11

    move-object v9, v10

    move/from16 v10, p1

    move/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;IZZ)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1827
    iget-object v0, v13, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, v13, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v0, :cond_14

    iget-boolean v0, v13, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-eqz v0, :cond_14

    .line 1828
    iget-object v0, v13, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v13, v0, v1, v1, v1}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1829
    iget-object v0, v13, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_14
    if-eqz v15, :cond_15

    .line 1833
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda30;

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v15, v1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_15
    const/4 v0, 0x1

    .line 1845
    iput-boolean v0, v13, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    :goto_6
    return-void
.end method

.method private synthetic lambda$processLoadedContacts$40(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 11

    .line 1620
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, p1, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1622
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 1624
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1626
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1627
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1628
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1629
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1630
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/2addr v0, v2

    goto :goto_1

    .line 1634
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1637
    :cond_3
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1638
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

    .line 1640
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1647
    :cond_5
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda11;

    move-object v4, v1

    move-object v5, p0

    move v6, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/ContactsController;ILjava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Z)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$readContacts$14()V
    .locals 3

    .line 670
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

    .line 676
    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZJ)V

    return-void

    .line 671
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 672
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 673
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$reloadContactsStatuses$59(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const-string/jumbo v0, "needGetStatuses"

    .line 2597
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2598
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 2599
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 2600
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2601
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2602
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 2603
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2608
    :cond_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v4, :cond_1

    const/16 v4, -0x64

    .line 2609
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    .line 2610
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v4, :cond_2

    const/16 v4, -0x65

    .line 2611
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    .line 2612
    :cond_2
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v4, :cond_3

    const/16 v4, -0x66

    .line 2613
    iput v4, v3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 2616
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

    .line 2618
    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 2620
    :cond_4
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_contactStatus;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 2621
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2623
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v0, v0}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    .line 2625
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

.method private synthetic lambda$reloadContactsStatuses$60(Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p3, :cond_0

    .line 2596
    new-instance p3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$resetImportedContacts$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$searchAccountByTel$0(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 4

    .line 96
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 97
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->searchAccountByTelTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 99
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 100
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 101
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 102
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 105
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;Z)V

    .line 106
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    move v0, p2

    :cond_0
    if-nez v0, :cond_1

    .line 111
    sget p1, Lorg/telegram/messenger/R$string;->dialogs_tel_search_user_not_found:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$searchAccountByTel$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 95
    new-instance p5, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda44;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchAccountByTel$2(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 115
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->searchAccountByTelTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$searchAccountByTel$3(ILorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 121
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 122
    sget p1, Lorg/telegram/messenger/R$string;->dialogs_tel_search_user_error:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$syncPhoneBookByAlert$10(Ljava/util/HashMap;ZZZ)V
    .locals 9

    .line 551
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sync contacts by alert"

    .line 552
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

    .line 554
    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZZZ)V

    return-void
.end method

.method private static synthetic lambda$updateUnregisteredContacts$45(Ljava/text/Collator;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 2

    .line 1987
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1988
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1989
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1991
    :cond_0
    iget-object p1, p2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1992
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1993
    iget-object p1, p2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1995
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

    .line 1877
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1878
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performWriteContactsToPhoneBook()V
    .locals 3

    .line 2149
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2150
    sget-object v1, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private performWriteContactsToPhoneBookInternal(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contacts_updated_v7"

    .line 2094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 2096
    :try_start_0
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 2097
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsWritePermission()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 2100
    :cond_0
    iget v4, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, 0x0

    .line 2101
    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 2103
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2105
    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2106
    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string/jumbo v8, "sync2"

    .line 2107
    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2108
    :try_start_1
    new-instance v8, Landroidx/collection/LongSparseArray;

    invoke-direct {v8}, Landroidx/collection/LongSparseArray;-><init>()V

    if-eqz v4, :cond_7

    .line 2110
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2111
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 2113
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2116
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performWriteContactsToPhoneBookInternal contacts array "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " bookContactsSize="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " currentAccount="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    move-object v4, v3

    .line 2118
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v9, "com.android.contacts"

    if-ge v5, v7, :cond_6

    .line 2119
    :try_start_3
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-nez v6, :cond_3

    .line 2120
    iget-wide v10, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v8, v10, v11}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v10

    if-gez v10, :cond_5

    :cond_3
    if-nez v4, :cond_4

    .line 2122
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lorg/telegram/messenger/ContactsController;->applyContactToPhoneBook(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    .line 2125
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v10, 0x1c2

    if-le v7, v10, :cond_5

    .line 2126
    invoke-virtual {v0, v9, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 2127
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_8

    .line 2131
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 2132
    invoke-virtual {v0, v9, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 2133
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_7
    move-object v3, v4

    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 2138
    :goto_4
    :try_start_4
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_a

    .line 2141
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2145
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "performWriteContactsToPhoneBookInternal "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    :goto_6
    if-eqz v3, :cond_b

    .line 2141
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2143
    :cond_b
    throw p1
.end method

.method private reloadContactsStatuses()V
    .locals 4

    .line 2588
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->saveContactsLoadTime()V

    .line 2589
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->clearFullUsers()V

    .line 2590
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2591
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "needGetStatuses"

    const/4 v2, 0x1

    .line 2592
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2593
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getStatuses;-><init>()V

    .line 2594
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda59;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private saveContactsLoadTime()V
    .locals 4

    .line 1869
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1870
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastReloadStatusTime"

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

    .line 1872
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateUnregisteredContacts()V
    .locals 8

    .line 1956
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1958
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1959
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1960
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1961
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 1964
    :cond_0
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1967
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1968
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

    .line 1969
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    move v5, v2

    .line 1972
    :goto_3
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_4

    .line 1973
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1974
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
    move v7, v2

    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    goto :goto_2

    .line 1983
    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1985
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getLocaleCollator()Ljava/text/Collator;

    move-result-object v0

    .line 1986
    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda50;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda50;-><init>(Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1998
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addContact(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2438
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;-><init>()V

    .line 2439
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2440
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->first_name:Ljava/lang/String;

    .line 2441
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->last_name:Ljava/lang/String;

    .line 2442
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    .line 2443
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->add_phone_privacy_exception:Z

    if-nez v1, :cond_1

    const-string p2, ""

    .line 2445
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    goto :goto_0

    .line 2446
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    const-string v1, "+"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2447
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    .line 2449
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda63;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda63;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x6

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public addContactToPhoneBook(Lorg/telegram/tgnet/TLRPC$User;Z)J
    .locals 6

    .line 2315
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2318
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return-wide v1

    .line 2322
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x1

    .line 2323
    :try_start_0
    iput-boolean v3, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2325
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 2328
    :try_start_1
    sget-object p2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v3, "caller_is_syncadapter"

    const-string/jumbo v4, "true"

    invoke-virtual {p2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v3, "account_name"

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v3, "account_type"

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 2329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sync2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2335
    :catch_0
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2336
    invoke-direct {p0, p2, p1}, Lorg/telegram/messenger/ContactsController;->applyContactToPhoneBook(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 p1, 0x0

    :try_start_2
    const-string v3, "com.android.contacts"

    .line 2339
    invoke-virtual {v0, v3, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2340
    array-length v0, p2

    if-lez v0, :cond_3

    aget-object v0, p2, p1

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 2341
    aget-object p2, p2, p1

    iget-object p2, p2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v1, v0

    .line 2346
    :catch_1
    :cond_3
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->observerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2347
    :try_start_3
    iput-boolean p1, p0, Lorg/telegram/messenger/ContactsController;->ignoreChanges:Z

    .line 2348
    monitor-exit p2

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2324
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public checkAppAccount()V
    .locals 15

    const-string v0, "com.iMe.android"

    const-string v1, ""

    const-string/jumbo v2, "org.telegram.messenger"

    .line 455
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 457
    :try_start_0
    invoke-virtual {v2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    .line 458
    iput-object v4, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    const/4 v6, 0x0

    move v7, v6

    .line 459
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_4

    .line 460
    aget-object v8, v5, v7

    move v9, v6

    :goto_1
    const/4 v10, 0x5

    if-ge v9, v10, :cond_2

    .line 463
    invoke-static {v9}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 465
    iget-object v11, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v10, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 466
    iget v10, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    if-ne v9, v10, :cond_0

    .line 467
    iput-object v8, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_2
    if-nez v8, :cond_3

    .line 476
    :try_start_1
    aget-object v8, v5, v7

    invoke-virtual {v3, v8, v4, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 486
    :catchall_0
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 487
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->readContacts()V

    .line 488
    iget-object v5, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    if-nez v5, :cond_5

    .line 490
    :try_start_2
    new-instance v5, Landroid/accounts/Account;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 491
    invoke-virtual {v3, v5, v1, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    return-void
.end method

.method public checkContacts()V
    .locals 2

    .line 530
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public checkInviteText()V
    .locals 5

    .line 412
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "invitelink"

    const/4 v2, 0x0

    .line 413
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->inviteLink:Ljava/lang/String;

    const-string v1, "invitelinktime"

    const/4 v2, 0x0

    .line 414
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 415
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

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->updatingInviteLink:Z

    .line 417
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_getInviteText;-><init>()V

    .line 418
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/messenger/ContactsController;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 2

    .line 371
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBook:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 372
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookSPhones:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 373
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 376
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 377
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 378
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 379
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 382
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByShortPhone:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 383
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 384
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 387
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsSyncInProgress:Z

    .line 388
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->doneLoadingContacts:Z

    .line 389
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    .line 390
    iput-boolean v0, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    const-string v1, ""

    .line 391
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->lastContactsVersions:Ljava/lang/String;

    .line 392
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    .line 393
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 394
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    .line 395
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    .line 397
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    .line 398
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    .line 399
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    .line 400
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    .line 401
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->bioPrivacyRules:Ljava/util/ArrayList;

    .line 402
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    .line 403
    iput-object v0, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    .line 405
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

    const-string/jumbo v5, "raw_contact_id=? AND mimetype=?"

    const-string/jumbo v6, "vnd.android.cursor.item/group_membership"

    const-string v7, "TelegramConnectionService"

    const-string/jumbo v8, "true"

    const-string v9, "caller_is_syncadapter"

    const-string/jumbo v10, "mimetype"

    const-string v11, ""

    const-string/jumbo v12, "raw_contact_id"

    .line 2843
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v13

    if-nez v13, :cond_0

    return-void

    .line 2847
    :cond_0
    :try_start_0
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 2848
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2850
    sget-object v14, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    .line 2851
    sget-object v16, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v17, v14

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    invoke-virtual {v14, v9, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "_id"

    .line 2854
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v9, "title=? AND account_type=? AND account_name=?"

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

    .line 2858
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    .line 2859
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v23, v10

    move-object/from16 v17, v15

    goto :goto_0

    .line 2865
    :cond_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2866
    iget-object v0, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    iget-object v0, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "group_visible"

    move-object/from16 v17, v15

    const/16 v16, 0x0

    .line 2868
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "group_is_read_only"

    move-object/from16 v23, v10

    const/4 v15, 0x1

    .line 2869
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "title"

    .line 2870
    invoke-virtual {v14, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v13, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2872
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-eqz v9, :cond_2

    .line 2875
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2878
    :cond_2
    sget-object v15, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v0, "mimetype=? AND data1=?"

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

    .line 2881
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

    .line 2882
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v9, 0x0

    .line 2883
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2884
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

    .line 2885
    invoke-virtual {v8, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "deleted"

    .line 2886
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2887
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    move-object/from16 v9, v22

    .line 2884
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2888
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

    .line 2889
    invoke-virtual {v0, v5, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2891
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2892
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2888
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2893
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

    .line 2894
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v5, p3

    .line 2896
    invoke-virtual {v0, v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v11, p4

    .line 2897
    invoke-virtual {v0, v7, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2898
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2893
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    move-object/from16 v5, p3

    move-object/from16 v11, p4

    move-object/from16 v24, v0

    move/from16 v19, v9

    move-object/from16 v9, v22

    const/4 v0, 0x1

    .line 2900
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    iget-object v0, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2901
    invoke-virtual {v8, v10, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v8, v1, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v10, v23

    .line 2902
    invoke-virtual {v0, v10, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string/jumbo v8, "raw_contact_is_read_only"

    const/4 v10, 0x1

    .line 2903
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v8, "aggregation_mode"

    .line 2904
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2905
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2900
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2906
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move/from16 v8, v19

    .line 2907
    invoke-virtual {v0, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v10, v20

    .line 2908
    invoke-virtual {v0, v10, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2909
    invoke-virtual {v0, v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2910
    invoke-virtual {v0, v7, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2911
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2906
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2913
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2914
    invoke-virtual {v0, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2915
    invoke-virtual {v0, v10, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2916
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2917
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2913
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2918
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2919
    invoke-virtual {v0, v12, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    move-object/from16 v2, v18

    .line 2920
    invoke-virtual {v0, v10, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2921
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2922
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2918
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v24, :cond_4

    .line 2925
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v0, "com.android.contacts"

    move-object/from16 v2, v16

    .line 2927
    invoke-virtual {v2, v0, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2930
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public deleteAllContacts(Ljava/lang/Runnable;)V
    .locals 8

    .line 559
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->resetImportedContacts()V

    .line 560
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;-><init>()V

    .line 561
    iget-object v1, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 562
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 563
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;->id:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda61;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public deleteConnectionServiceContact()V
    .locals 11

    const-string v0, ""

    .line 2935
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2938
    :cond_0
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2940
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "title=? AND account_type=? AND account_name=?"

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

    .line 2944
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2945
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2946
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2952
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "raw_contact_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mimetype=? AND data1=?"

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

    .line 2956
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2957
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 2958
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2964
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

    .line 2961
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    if-eqz v2, :cond_4

    .line 2949
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    .line 2967
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

    .line 74
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method public deleteContact(Ljava/util/ArrayList;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 2506
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2514
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;-><init>()V

    .line 2515
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2516
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2517
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 2518
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Stories/StoriesController;->removeContact(J)V

    .line 2519
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 2523
    :cond_1
    iput-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    .line 2524
    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2525
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_deleteContacts;->id:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2527
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2528
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v8

    new-instance v9, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda60;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p3

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/messenger/ContactsController;Lcom/iMe/fork/utils/Callbacks$Callback1;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-virtual {v8, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 2509
    new-instance p1, Ljava/lang/Exception;

    const-string/jumbo p2, "users is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public deleteUnknownAppAccounts()V
    .locals 12

    const-string/jumbo v0, "org.telegram.messenger"

    const/4 v1, 0x0

    .line 501
    :try_start_0
    iput-object v1, p0, Lorg/telegram/messenger/ContactsController;->systemAccount:Landroid/accounts/Account;

    .line 502
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.iMe.android"

    .line 503
    invoke-virtual {v0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    .line 504
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 505
    aget-object v5, v0, v4

    move v6, v3

    :goto_1
    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 508
    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 510
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
    move v5, v3

    :goto_2
    if-nez v5, :cond_2

    .line 518
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

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public forceImportContacts()V
    .locals 2

    .line 541
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

    .line 1013
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1014
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

    .line 1015
    new-instance v2, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v2}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 1016
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 1017
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1018
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1019
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1020
    iget-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    iget-object v4, v1, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1021
    iget-object v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 1022
    iget-object v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 1023
    iget v3, v1, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    iput v3, v2, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    .line 1024
    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    iput-object v1, v2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 1025
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDeleteAccountTTL()I
    .locals 1

    .line 2760
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I

    return v0
.end method

.method public getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;
    .locals 1

    .line 2776
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->globalPrivacySettings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    return-object v0
.end method

.method public getInviteText(I)Ljava/lang/String;
    .locals 3

    .line 439
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

    .line 2764
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

    .line 2768
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

    .line 2772
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

    .line 2792
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->bioPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2800
    :pswitch_1
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->voiceMessagesRules:Ljava/util/ArrayList;

    return-object p1

    .line 2798
    :pswitch_2
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->addedByPhonePrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2796
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2794
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2790
    :pswitch_5
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2788
    :pswitch_6
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2786
    :pswitch_7
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2784
    :pswitch_8
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    .line 2782
    :pswitch_9
    iget-object p1, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

    .line 1852
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

    .line 1542
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1543
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1544
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadContacts(ZJ)V
    .locals 2

    .line 1571
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1572
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 1573
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1575
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "load contacts from cache"

    .line 1576
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1578
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getContacts()V

    goto :goto_0

    .line 1580
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "load contacts from server"

    .line 1581
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1584
    :cond_2
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;-><init>()V

    .line 1585
    iput-wide p2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_getContacts;->hash:J

    .line 1586
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, p2, p3}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda58;-><init>(Lorg/telegram/messenger/ContactsController;J)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 1573
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public loadGlobalPrivacySetting()V
    .locals 3

    .line 2632
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2633
    iput v0, p0, Lorg/telegram/messenger/ContactsController;->loadingGlobalSettings:I

    .line 2634
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getGlobalPrivacySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getGlobalPrivacySettings;-><init>()V

    .line 2635
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    return-void
.end method

.method public loadPrivacySettings()V
    .locals 6

    .line 2648
    iget v0, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2649
    iput v1, p0, Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I

    .line 2650
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getAccountTTL;-><init>()V

    .line 2651
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda55;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda55;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2662
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/ContactsController;->loadGlobalPrivacySetting()V

    const/4 v0, 0x0

    move v2, v0

    .line 2663
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController;->loadingPrivacyInfo:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 2664
    aget v4, v3, v2

    if-eqz v4, :cond_1

    goto :goto_2

    .line 2667
    :cond_1
    aput v1, v3, v2

    .line 2670
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;-><init>()V

    packed-switch v2, :pswitch_data_0

    .line 2702
    :pswitch_0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAddedByPhone;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAddedByPhone;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2689
    :pswitch_1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAbout;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyAbout;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2698
    :pswitch_2
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyVoiceMessages;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyVoiceMessages;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2695
    :pswitch_3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneNumber;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneNumber;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2692
    :pswitch_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyForwards;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyForwards;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2686
    :pswitch_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyProfilePhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyProfilePhoto;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2683
    :pswitch_6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneP2P;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneP2P;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2680
    :pswitch_7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyPhoneCall;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2677
    :pswitch_8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyChatInvite;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    goto :goto_1

    .line 2674
    :pswitch_9
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_getPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 2706
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda57;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/messenger/ContactsController;I)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2752
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected markAsContacted(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2424
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

    .line 1031
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/ContactsController;Landroid/util/SparseArray;)V

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

    .line 1065
    iget-boolean v0, v9, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 1068
    :cond_0
    sget-object v10, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v11, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda37;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p4

    move v4, p2

    move v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZZZ)V

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

    .line 2275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2277
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

    .line 2278
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, -0x1

    if-lez v4, :cond_1

    .line 2279
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 2280
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    .line 2281
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2282
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2283
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 2285
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2288
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-gez v4, :cond_0

    .line 2289
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2290
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2291
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 2293
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 2298
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2299
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesStorage;->deleteContacts(Ljava/util/ArrayList;)V

    .line 2301
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2302
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 2304
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z

    if-nez v2, :cond_5

    goto :goto_1

    .line 2310
    :cond_5
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Lj$/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2305
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2306
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_7

    .line 2307
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

    .line 1619
    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readContacts()V
    .locals 2

    .line 662
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->loadContactsSync:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    if-eqz v1, :cond_0

    .line 664
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 666
    iput-boolean v1, p0, Lorg/telegram/messenger/ContactsController;->loadingContacts:Z

    .line 667
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/ContactsController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 667
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

    .line 695
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-nez v0, :cond_1

    .line 696
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "contacts sync disabled"

    .line 697
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 699
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 701
    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/ContactsController;->hasContactsPermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 702
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    const-string v0, "app has no contacts permissions"

    .line 703
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 705
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 710
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 714
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 715
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 716
    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, v1, Lorg/telegram/messenger/ContactsController;->projectionPhones:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 718
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    const-string v14, "PhoneOther"

    const-string v15, "+"

    const-string v6, ""

    const/4 v2, 0x1

    if-eqz v4, :cond_18

    .line 721
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_17

    .line 723
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v8}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v8, v2

    .line 724
    :goto_0
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 725
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x5

    .line 726
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v6

    :cond_4
    const-string v2, ".sim"

    .line 730
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 731
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v25, v3

    move-wide/from16 v21, v12

    :goto_2
    move-object/from16 v23, v15

    goto :goto_4

    :cond_6
    move-wide/from16 v21, v12

    const/4 v12, 0x1

    .line 734
    invoke-static {v7, v12}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 735
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v25, v3

    goto :goto_2

    .line 741
    :cond_7
    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v13, :cond_8

    .line 742
    :try_start_4
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v12, v1

    goto/16 :goto_d

    :cond_8
    move-object v13, v7

    :goto_3
    move-object/from16 v23, v15

    const/4 v12, 0x0

    .line 745
    :try_start_5
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 746
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 747
    invoke-static {v0, v15}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 750
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v3

    move-object/from16 v3, v24

    check-cast v3, Lorg/telegram/messenger/ContactsController$Contact;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_a

    .line 752
    :try_start_6
    iget-boolean v7, v3, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    if-nez v7, :cond_9

    iget-object v7, v3, Lorg/telegram/messenger/ContactsController$Contact;->provider:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    .line 753
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 754
    iget-object v7, v3, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 756
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iput-object v15, v3, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 758
    iput-boolean v2, v3, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    .line 759
    iput-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->provider:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    :goto_4
    move-wide/from16 v12, v21

    move-object/from16 v15, v23

    :goto_5
    move-object/from16 v3, v25

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 764
    :cond_a
    :try_start_7
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_b

    .line 765
    :try_start_8
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    const/4 v3, 0x2

    .line 768
    :try_start_9
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 769
    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v3, :cond_f

    .line 771
    new-instance v3, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v3}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    move-object/from16 v24, v0

    const/4 v0, 0x4

    .line 772
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_c

    move-object v0, v6

    goto :goto_6

    .line 776
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    .line 778
    :goto_6
    invoke-direct {v1, v0}, Lorg/telegram/messenger/ContactsController;->isNotValidNameString(Ljava/lang/String;)Z

    move-result v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v18, :cond_d

    .line 779
    :try_start_a
    iput-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 780
    iput-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v18, v11

    goto :goto_7

    :cond_d
    const/16 v1, 0x20

    .line 782
    :try_start_b
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    move-object/from16 v18, v11

    const/4 v11, -0x1

    if-eq v1, v11, :cond_e

    const/4 v11, 0x0

    .line 784
    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto :goto_7

    .line 787
    :cond_e
    iput-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 788
    iput-object v6, v3, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 791
    :goto_7
    iput-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->provider:Ljava/lang/String;

    .line 792
    iput-boolean v2, v3, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    .line 793
    iput-object v15, v3, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    add-int/lit8 v0, v8, 0x1

    .line 794
    iput v8, v3, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    .line 795
    invoke-virtual {v9, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v0

    goto :goto_8

    :cond_f
    move-object/from16 v24, v0

    move-object/from16 v18, v11

    .line 798
    :goto_8
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-string v0, "PhoneMobile"

    if-nez v12, :cond_11

    const/4 v2, 0x3

    .line 803
    :try_start_c
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 804
    iget-object v2, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    if-eqz v5, :cond_10

    goto :goto_9

    :cond_10
    sget v5, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_9
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    const/4 v0, 0x3

    const/4 v2, 0x2

    goto :goto_b

    :cond_11
    const/4 v2, 0x1

    if-ne v12, v2, :cond_12

    .line 806
    iget-object v0, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v2, "PhoneHome"

    sget v5, Lorg/telegram/messenger/R$string;->PhoneHome:I

    invoke-static {v2, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    const/4 v2, 0x2

    if-ne v12, v2, :cond_13

    .line 808
    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    sget v7, Lorg/telegram/messenger/R$string;->PhoneMobile:I

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    goto :goto_b

    :cond_13
    const/4 v0, 0x3

    if-ne v12, v0, :cond_14

    .line 810
    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v7, "PhoneWork"

    sget v11, Lorg/telegram/messenger/R$string;->PhoneWork:I

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    const/16 v5, 0xc

    if-ne v12, v5, :cond_15

    .line 812
    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    const-string v7, "PhoneMain"

    sget v11, Lorg/telegram/messenger/R$string;->PhoneMain:I

    invoke-static {v7, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 814
    :cond_15
    iget-object v5, v3, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    sget v7, Lorg/telegram/messenger/R$string;->PhoneOther:I

    invoke-static {v14, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    :goto_b
    invoke-virtual {v10, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v11, v18

    move-wide/from16 v12, v21

    move-object/from16 v15, v23

    move-object/from16 v0, v24

    goto/16 :goto_5

    :cond_16
    move-object/from16 v25, v3

    move-object/from16 v18, v11

    move-wide/from16 v21, v12

    move-object/from16 v23, v15

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    goto :goto_c

    :cond_17
    move-object/from16 v25, v3

    move-object/from16 v18, v11

    move-wide/from16 v21, v12

    move-object/from16 v23, v15

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 820
    :goto_c
    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object/from16 v12, p0

    :goto_d
    move-object v2, v9

    goto/16 :goto_25

    :catch_0
    :goto_e
    move v11, v8

    move-object v10, v9

    const/4 v3, 0x0

    goto :goto_f

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    move-object/from16 v12, p0

    goto/16 :goto_25

    :cond_18
    move-object/from16 v25, v3

    move-object/from16 v18, v11

    move-wide/from16 v21, v12

    move-object/from16 v23, v15

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v3, v4

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_f
    :try_start_e
    const-string v4, ","

    move-object/from16 v5, v18

    .line 826
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 828
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-object/from16 v12, p0

    :try_start_f
    iget-object v7, v12, Lorg/telegram/messenger/ContactsController;->projectionNames:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lookup IN ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") AND "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mimetype"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = \'"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, v25

    move-object v15, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    const-string v13, " "

    if-eqz v3, :cond_27

    .line 830
    :cond_19
    :goto_10
    :try_start_10
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 831
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 832
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 833
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 834
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v10, :cond_1a

    .line 835
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/ContactsController$Contact;

    goto :goto_11

    :cond_1a
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_19

    .line 836
    iget-boolean v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->namesFilled:Z

    if-nez v8, :cond_19

    .line 837
    iget-boolean v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->isGoodProvider:Z

    if-eqz v8, :cond_1e

    if-eqz v6, :cond_1b

    .line 839
    iput-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_12

    .line 841
    :cond_1b
    iput-object v15, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    :goto_12
    if-eqz v5, :cond_1c

    .line 844
    iput-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto :goto_13

    .line 846
    :cond_1c
    iput-object v15, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    .line 848
    :goto_13
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 849
    iget-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 850
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_16

    .line 852
    :cond_1d
    iput-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_16

    .line 856
    :cond_1e
    invoke-direct {v12, v6}, Lorg/telegram/messenger/ContactsController;->isNotValidNameString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 857
    :cond_1f
    invoke-direct {v12, v5}, Lorg/telegram/messenger/ContactsController;->isNotValidNameString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_25

    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_25

    :cond_20
    if-eqz v6, :cond_21

    .line 859
    iput-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_14

    .line 861
    :cond_21
    iput-object v15, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 863
    :goto_14
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 864
    iget-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    goto :goto_15

    .line 867
    :cond_22
    iput-object v7, v4, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    :cond_23
    :goto_15
    if-eqz v5, :cond_24

    .line 871
    iput-object v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    goto :goto_16

    .line 873
    :cond_24
    iput-object v15, v4, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    :cond_25
    :goto_16
    const/4 v5, 0x1

    .line 877
    iput-boolean v5, v4, Lorg/telegram/messenger/ContactsController$Contact;->namesFilled:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_10

    .line 881
    :cond_26
    :try_start_11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catch_1
    const/4 v3, 0x0

    .line 887
    :cond_27
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loading contacts 1 query time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v21

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " contactsSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_28

    move v5, v1

    goto :goto_17

    :cond_28
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v5

    :goto_17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 888
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 890
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 891
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 893
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string/jumbo v6, "lookup"

    const-string v7, "display_name"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "has_phone_number = ?"

    const-string v4, "0"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v4, v25

    move-object v0, v8

    move-object/from16 v8, v19

    move-object/from16 v27, v9

    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    if-eqz v4, :cond_2d

    .line 900
    :cond_29
    :goto_18
    :try_start_13
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 901
    new-instance v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;

    const/4 v6, 0x0

    invoke-direct {v5, v12, v6}, Lorg/telegram/messenger/ContactsController$PhoneBookContact;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/messenger/ContactsController$1;)V

    .line 902
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->id:Ljava/lang/String;

    const/4 v7, 0x1

    .line 903
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->lookup_key:Ljava/lang/String;

    .line 904
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->name:Ljava/lang/String;

    if-eqz v10, :cond_2a

    .line 905
    iget-object v7, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->lookup_key:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_29

    :cond_2a
    iget-object v7, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_18

    .line 908
    :cond_2b
    iget-object v7, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->id:Ljava/lang/String;

    move-object/from16 v9, v27

    invoke-virtual {v9, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v9

    goto :goto_18

    :cond_2c
    move-object/from16 v9, v27

    .line 911
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_19

    :cond_2d
    move-object/from16 v9, v27

    .line 913
    :goto_19
    :try_start_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loading contacts 2 query time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v17

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " phoneBookConacts size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 916
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/String;

    const-string v4, ".*(\\+[0-9 \\-]+).*"

    .line 918
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 919
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "contact_id"

    const-string v8, "data1"

    const-string v2, "data2"

    const-string v1, "data3"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v18, v3

    :try_start_15
    const-string v3, "data4"

    filled-new-array {v4, v8, v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 928
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v4, v25

    move-object v3, v6

    move-object v6, v1

    move-object v1, v7

    move-object v7, v0

    const/4 v0, 0x4

    move-object v0, v9

    move-object v9, v2

    .line 919
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    if-eqz v2, :cond_37

    .line 931
    :goto_1a
    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x0

    .line 932
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 933
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;

    if-eqz v5, :cond_34

    const/4 v6, 0x1

    .line 935
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    const/4 v4, 0x2

    .line 936
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    const/4 v6, 0x3

    .line 937
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    const/4 v7, 0x4

    .line 938
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v6

    const/4 v8, 0x0

    :goto_1b
    if-ge v8, v7, :cond_33

    .line 940
    aget-object v9, v1, v8

    if-nez v9, :cond_2f

    :cond_2e
    move-object/from16 v9, v23

    const/4 v4, 0x1

    const/16 v18, 0x0

    goto/16 :goto_1f

    .line 943
    :cond_2f
    aget-object v9, v1, v8

    invoke-virtual {v3, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 944
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_30

    const/4 v4, 0x1

    .line 945
    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "-"

    invoke-virtual {v4, v9, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->phone:Ljava/lang/String;

    .line 948
    :cond_30
    iget-object v4, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->phone:Ljava/lang/String;

    if-eqz v4, :cond_2e

    move-object/from16 v9, v23

    .line 950
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 951
    iget-object v4, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->phone:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_31
    const/4 v8, 0x1

    .line 954
    :goto_1c
    new-instance v6, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-direct {v6}, Lorg/telegram/messenger/ContactsController$Contact;-><init>()V

    .line 955
    iget-object v7, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->name:Ljava/lang/String;

    iput-object v7, v6, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    .line 956
    iput-object v15, v6, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    add-int/lit8 v7, v11, 0x1

    .line 957
    iput v11, v6, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    .line 958
    iget-object v11, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->lookup_key:Ljava/lang/String;

    iput-object v11, v6, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    .line 959
    iget-object v11, v6, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    iget-object v8, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->phone:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v8, v6, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v4, v6, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object v4, v6, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    sget v8, Lorg/telegram/messenger/R$string;->PhoneOther:I

    invoke-static {v14, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_32

    .line 964
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_1d

    :cond_32
    move-object v4, v10

    .line 966
    :goto_1d
    :try_start_17
    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$PhoneBookContact;->lookup_key:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object v10, v4

    move v11, v7

    :goto_1e
    const/4 v4, 0x1

    goto :goto_20

    :catchall_3
    move-exception v0

    move-object/from16 v28, v4

    move-object v4, v2

    move-object/from16 v2, v28

    goto/16 :goto_25

    :goto_1f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v23, v9

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    goto/16 :goto_1b

    :cond_33
    move-object/from16 v9, v23

    const/4 v4, 0x1

    const/16 v18, 0x0

    goto :goto_20

    :cond_34
    move/from16 v18, v4

    move-object/from16 v9, v23

    goto :goto_1e

    :goto_20
    move-object/from16 v23, v9

    goto/16 :goto_1a

    .line 972
    :cond_35
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_21

    :catchall_4
    move-exception v0

    goto :goto_22

    :cond_36
    move-object/from16 v18, v3

    move-object/from16 v2, v18

    .line 976
    :cond_37
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loading contacts 3 query time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    if-eqz v2, :cond_3a

    .line 986
    :try_start_19
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    goto :goto_27

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 989
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_27

    :catchall_5
    move-exception v0

    move-object v4, v2

    goto :goto_24

    :catchall_6
    move-exception v0

    move-object/from16 v18, v3

    :goto_22
    move-object v2, v10

    move-object/from16 v4, v18

    goto :goto_25

    :catchall_7
    move-exception v0

    goto :goto_23

    :catchall_8
    move-exception v0

    move-object/from16 v12, p0

    :goto_23
    move-object v4, v3

    :goto_24
    move-object v2, v10

    goto :goto_25

    :catchall_9
    move-exception v0

    move-object v12, v1

    const/4 v6, 0x0

    move-object v2, v6

    goto :goto_25

    :catchall_a
    move-exception v0

    move-object v12, v1

    const/4 v6, 0x0

    move-object v2, v6

    move-object v4, v2

    .line 979
    :goto_25
    :try_start_1a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_38

    .line 981
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    :cond_38
    if-eqz v4, :cond_39

    .line 986
    :try_start_1b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    goto :goto_26

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 989
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_39
    :goto_26
    move-object v10, v2

    :cond_3a
    :goto_27
    if-eqz v10, :cond_3b

    goto :goto_28

    .line 1009
    :cond_3b
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :goto_28
    return-object v10

    :catchall_b
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_3c

    .line 986
    :try_start_1c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    goto :goto_29

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 989
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 991
    :cond_3c
    :goto_29
    throw v1
.end method

.method public reloadContactsStatusesMaybe()V
    .locals 6

    .line 1857
    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "lastReloadStatusTime"

    const-wide/16 v2, 0x0

    .line 1858
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb80

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1860
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1863
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resetImportedContacts()V
    .locals 3

    .line 627
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetSaved;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resetSaved;-><init>()V

    .line 628
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda65;->INSTANCE:Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda65;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public searchAccountByTel(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/lang/String;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, " "

    const-string v1, ""

    .line 78
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v0, :cond_1

    .line 85
    iget-wide p1, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 89
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 90
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    const-wide/16 v4, 0x1

    .line 91
    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 92
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 94
    iget-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0, v0, p3, p4}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/messenger/ContactsController;Lorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p2, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p2

    .line 114
    new-instance p3, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ContactsController;I)V

    invoke-virtual {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 118
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 119
    new-instance p1, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, p2, v0, p4}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/ContactsController;ILorg/telegram/ui/ActionBar/AlertDialog;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->searchAccountByTelTimeoutRunnable:Ljava/lang/Runnable;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p3, 0xa

    .line 123
    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 119
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setDeleteAccountTTL(I)V
    .locals 0

    .line 2756
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

    .line 2823
    :pswitch_0
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->bioPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2835
    :pswitch_1
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->voiceMessagesRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2832
    :pswitch_2
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->addedByPhonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2829
    :pswitch_3
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->phonePrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2826
    :pswitch_4
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->forwardsPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2820
    :pswitch_5
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->profilePhotoPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2817
    :pswitch_6
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->p2pPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2814
    :pswitch_7
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2811
    :pswitch_8
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->groupPrivacyRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 2808
    :pswitch_9
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController;->lastseenPrivacyRules:Ljava/util/ArrayList;

    .line 2838
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2839
    invoke-direct {p0}, Lorg/telegram/messenger/ContactsController;->reloadContactsStatuses()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

    .line 550
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda36;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZ)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method
