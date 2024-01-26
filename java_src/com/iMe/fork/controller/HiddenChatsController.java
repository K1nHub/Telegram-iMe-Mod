package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.HiddenChatsController;
import com.iMe.fork.models.backup.Backup;
import com.iMe.storage.data.locale.p026db.dao.main.HiddenChatsDao;
import com.iMe.storage.data.locale.p026db.model.hidden_chats.HiddenChatsDb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: HiddenChatsController.kt */
/* loaded from: classes3.dex */
public final class HiddenChatsController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, HiddenChatsController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy dao$delegate;
    private List<Long> hiddenChatDialogs;
    private boolean isHiddenChatsHidden;

    public static final HiddenChatsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public HiddenChatsController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<HiddenChatsDao>() { // from class: com.iMe.fork.controller.HiddenChatsController$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final HiddenChatsDao invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(HiddenChatsDao.class), qualifier, function0);
            }
        });
        this.dao$delegate = lazy;
        this.hiddenChatDialogs = new ArrayList();
        this.isHiddenChatsHidden = TelegramPreferenceKeys.User.Default.isHiddenChatsHidden();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final HiddenChatsDao getDao() {
        return (HiddenChatsDao) this.dao$delegate.getValue();
    }

    public final List<Long> getHiddenChatDialogs() {
        return this.hiddenChatDialogs;
    }

    public final boolean isHiddenChatsHidden() {
        return this.isHiddenChatsHidden;
    }

    private final void insertHiddenChats(final List<Long> list) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.HiddenChatsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                HiddenChatsController.insertHiddenChats$lambda$1(HiddenChatsController.this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void insertHiddenChats$lambda$1(HiddenChatsController this$0, List dialogIds) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dialogIds, "$dialogIds");
        HiddenChatsDao dao = this$0.getDao();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(dialogIds, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = dialogIds.iterator();
        while (it.hasNext()) {
            arrayList.add(new HiddenChatsDb(this$0.getUserConfig().clientUserId, ((Number) it.next()).longValue()));
        }
        dao.insert((List) arrayList);
    }

    private final void removeHiddenChats(final List<Long> list) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.HiddenChatsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                HiddenChatsController.removeHiddenChats$lambda$2(HiddenChatsController.this, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeHiddenChats$lambda$2(HiddenChatsController this$0, List dialogIds) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dialogIds, "$dialogIds");
        this$0.getDao().deleteByIdList(dialogIds, this$0.getUserConfig().clientUserId);
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isHiddenChatsHidden = preferences.getBoolean(TelegramPreferenceKeys.User.isHiddenChatsHidden(), TelegramPreferenceKeys.User.Default.isHiddenChatsHidden());
    }

    public final void toggleHiddenChatsHidden() {
        this.isHiddenChatsHidden = !this.isHiddenChatsHidden;
        saveConfig();
    }

    public final void saveConfig() {
        getUserConfig().getPreferencesPublic().edit().putBoolean(TelegramPreferenceKeys.User.isHiddenChatsHidden(), this.isHiddenChatsHidden).apply();
    }

    public final void loadHiddenChats() {
        this.hiddenChatDialogs = getDao().getHiddenChats(getUserConfig().clientUserId);
    }

    public final void restoreBackup(final Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.getHiddenChatDialogs() != null) {
            getDao().restoreBackup(getUserConfig().clientUserId, backup.getHiddenChatDialogs());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.HiddenChatsController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    HiddenChatsController.restoreBackup$lambda$7(HiddenChatsController.this, backup);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restoreBackup$lambda$7(HiddenChatsController this$0, Backup backup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(backup, "$backup");
        List<Long> list = this$0.hiddenChatDialogs;
        list.clear();
        list.addAll(backup.getHiddenChatDialogs());
        this$0.removeRecentChatsAndPeer(this$0.hiddenChatDialogs);
        this$0.getMessagesController().sortDialogs(null);
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
    }

    public final boolean hideChats(long j, boolean z) {
        List<Long> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Long.valueOf(j));
        return hideChats(mutableListOf, z);
    }

    public final boolean hideChats(List<Long> dialogIds, boolean z) {
        Intrinsics.checkNotNullParameter(dialogIds, "dialogIds");
        this.isHiddenChatsHidden = true;
        saveConfig();
        if (z) {
            this.hiddenChatDialogs.addAll(dialogIds);
            removeRecentChatsAndPeer(dialogIds);
            insertHiddenChats(dialogIds);
        } else {
            this.hiddenChatDialogs.removeAll(dialogIds);
            removeHiddenChats(dialogIds);
        }
        getMessagesStorage().checkIfFolderEmpty(2);
        getMessagesStorage().checkIfFolderEmpty(1);
        if (!this.hiddenChatDialogs.isEmpty()) {
            getMessagesController().ensureFolderDialogExists(1);
            getMessagesController().sortDialogs(null);
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        }
        getMessagesStorage().resetAllUnreadCounters(false);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.recentChatsDidLoad, new Object[0]);
        return this.hiddenChatDialogs.isEmpty();
    }

    public final boolean isChatHidden(long j) {
        return this.hiddenChatDialogs.contains(Long.valueOf(j));
    }

    /* compiled from: HiddenChatsController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final HiddenChatsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (HiddenChatsController) tmp0.invoke(obj);
        }

        public final HiddenChatsController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = HiddenChatsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, HiddenChatsController> function1 = new Function1<Integer, HiddenChatsController>() { // from class: com.iMe.fork.controller.HiddenChatsController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final HiddenChatsController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new HiddenChatsController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.HiddenChatsController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    HiddenChatsController instance$lambda$0;
                    instance$lambda$0 = HiddenChatsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (HiddenChatsController) computeIfAbsent;
        }
    }

    public final List<Long> filterAddHiddenChats(List<Long> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!DialogObject.isEncryptedDialog(((Number) obj).longValue())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    private final void removeRecentChatsAndPeer(List<Long> list) {
        for (Number number : list) {
            long longValue = number.longValue();
            getMediaDataController().removePeer(longValue);
            getRecentChatsController().removeRecentChat(longValue);
            getNotificationsController().setDialogNotificationsSettings(longValue, 0L, 3);
        }
    }
}
