package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.AlbumsController;
import com.iMe.fork.models.backup.Backup;
import com.iMe.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao;
import com.iMe.storage.data.locale.p027db.model.cloud.CloudAlbumDb;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: AlbumsController.kt */
/* loaded from: classes4.dex */
public final class AlbumsController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, AlbumsController> accountInstances = new ConcurrentHashMap<>(5);
    private final List<Long> albums;
    private final Lazy dao$delegate;
    private boolean isOpenAlbumsInsteadCloudEnabled;

    public static final AlbumsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public AlbumsController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<AlbumsDao>() { // from class: com.iMe.fork.controller.AlbumsController$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.storage.data.locale.db.dao.minor.cloud.AlbumsDao] */
            @Override // kotlin.jvm.functions.Function0
            public final AlbumsDao invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(AlbumsDao.class), qualifier, function0);
            }
        });
        this.dao$delegate = lazy;
        this.albums = new ArrayList();
        this.isOpenAlbumsInsteadCloudEnabled = TelegramPreferenceKeys.User.Default.isOpenAlbumsInsteadCloudEnabled();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final AlbumsDao getDao() {
        return (AlbumsDao) this.dao$delegate.getValue();
    }

    public final List<Long> getAlbums() {
        return this.albums;
    }

    public final boolean isOpenAlbumsInsteadCloudEnabled() {
        return this.isOpenAlbumsInsteadCloudEnabled;
    }

    public final void setOpenAlbumsInsteadCloudEnabled(boolean z) {
        this.isOpenAlbumsInsteadCloudEnabled = z;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isOpenAlbumsInsteadCloudEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isOpenAlbumsInsteadCloudEnabled(), TelegramPreferenceKeys.User.Default.isOpenAlbumsInsteadCloudEnabled());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isOpenAlbumsInsteadCloudEnabled(), this.isOpenAlbumsInsteadCloudEnabled);
        edit.apply();
    }

    public final void restoreBackup(final Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isOpenAlbumsInsteadCloudEnabled() != null) {
            this.isOpenAlbumsInsteadCloudEnabled = backup.isOpenAlbumsInsteadCloudEnabled().booleanValue();
        }
        if (backup.getAlbums() != null) {
            getDao().restoreBackup(getUserConfig().clientUserId, backup.getAlbums());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.AlbumsController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AlbumsController.restoreBackup$lambda$3(AlbumsController.this, backup);
                }
            });
        }
        saveConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void restoreBackup$lambda$3(AlbumsController this$0, Backup backup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(backup, "$backup");
        List<Long> list = this$0.albums;
        list.clear();
        list.addAll(backup.getAlbums());
        this$0.getMessagesController().sortDialogs(null);
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
    }

    public final void loadAlbums() {
        List<Long> list = this.albums;
        list.clear();
        list.addAll(getDao().getAllAlbumsForUser(getUserConfig().clientUserId));
    }

    public final void toggleAlbum(long j, Runnable runnable) {
        if (isDialogAlbum(j)) {
            getMessagesController().addDialogToFolder(j, 0, -1, 0L);
            removeAlbum(j, runnable);
            return;
        }
        addAlbum(j, runnable);
    }

    public final void addAlbum(final long j, final Runnable runnable) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.AlbumsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AlbumsController.addAlbum$lambda$6(AlbumsController.this, j, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addAlbum$lambda$6(final AlbumsController this$0, final long j, final Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().insert((AlbumsDao) new CloudAlbumDb(this$0.getUserConfig().clientUserId, j));
        this$0.albums.add(Long.valueOf(j));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.AlbumsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AlbumsController.addAlbum$lambda$6$lambda$5(AlbumsController.this, j, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addAlbum$lambda$6$lambda$5(AlbumsController this$0, long j, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getMessagesController().addDialogToFolder(j, 1, -1, 0L);
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void removeAlbum(final long j, final Runnable runnable) {
        if (getMessagesController().hasDialog(j)) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.AlbumsController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AlbumsController.removeAlbum$lambda$8(AlbumsController.this, j, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeAlbum$lambda$8(final AlbumsController this$0, final long j, final Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().deleteByAlbumId(this$0.getUserConfig().clientUserId, j);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.AlbumsController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AlbumsController.removeAlbum$lambda$8$lambda$7(AlbumsController.this, j, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeAlbum$lambda$8$lambda$7(AlbumsController this$0, long j, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.albums.remove(Long.valueOf(j));
        this$0.getMessagesController().sortDialogs(null);
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogsNeedReload, new Object[0]);
        if (runnable != null) {
            runnable.run();
        }
    }

    public final boolean isDialogAlbum(long j) {
        return this.albums.contains(Long.valueOf(j));
    }

    /* compiled from: AlbumsController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final AlbumsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (AlbumsController) tmp0.invoke(obj);
        }

        public final AlbumsController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = AlbumsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, AlbumsController> function1 = new Function1<Integer, AlbumsController>() { // from class: com.iMe.fork.controller.AlbumsController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final AlbumsController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new AlbumsController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.AlbumsController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    AlbumsController instance$lambda$0;
                    instance$lambda$0 = AlbumsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (AlbumsController) computeIfAbsent;
        }
    }
}
