package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.storage.data.locale.p027db.dao.minor.cloud.AlbumsDao;
import com.smedialink.storage.data.locale.p027db.model.cloud.CloudAlbumDb;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.AlbumsController;
import org.fork.models.backup.Backup;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new AlbumsController$special$$inlined$inject$default$1(this, null, null));
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
        setOpenAlbumsInsteadCloudEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isOpenAlbumsInsteadCloudEnabled(), TelegramPreferenceKeys.User.Default.isOpenAlbumsInsteadCloudEnabled()));
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isOpenAlbumsInsteadCloudEnabled(), isOpenAlbumsInsteadCloudEnabled());
        edit.apply();
    }

    public final void restoreBackup(final Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isOpenAlbumsInsteadCloudEnabled() != null) {
            this.isOpenAlbumsInsteadCloudEnabled = backup.isOpenAlbumsInsteadCloudEnabled().booleanValue();
        }
        if (backup.getAlbums() != null) {
            getDao().restoreBackup(getUserConfig().clientUserId, backup.getAlbums());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.controller.AlbumsController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    AlbumsController.m1887restoreBackup$lambda3(AlbumsController.this, backup);
                }
            });
        }
        saveConfig();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: restoreBackup$lambda-3  reason: not valid java name */
    public static final void m1887restoreBackup$lambda3(AlbumsController this$0, Backup backup) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(backup, "$backup");
        List<Long> albums = this$0.getAlbums();
        albums.clear();
        albums.addAll(backup.getAlbums());
        this$0.getMessagesController().sortDialogs(null);
        this$0.getNotificationCenter().postNotificationName(NotificationCenter.dialogsNeedReload, new Object[0]);
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
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.AlbumsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                AlbumsController.m1883addAlbum$lambda6(AlbumsController.this, j, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addAlbum$lambda-6  reason: not valid java name */
    public static final void m1883addAlbum$lambda6(final AlbumsController this$0, final long j, final Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().insert((AlbumsDao) new CloudAlbumDb(this$0.getUserConfig().clientUserId, j));
        this$0.getAlbums().add(Long.valueOf(j));
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.controller.AlbumsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AlbumsController.m1884addAlbum$lambda6$lambda5(AlbumsController.this, j, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addAlbum$lambda-6$lambda-5  reason: not valid java name */
    public static final void m1884addAlbum$lambda6$lambda5(AlbumsController this$0, long j, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getMessagesController().addDialogToFolder(j, 1, -1, 0L);
        if (runnable == null) {
            return;
        }
        runnable.run();
    }

    public final void removeAlbum(final long j, final Runnable runnable) {
        if (getMessagesController().hasDialog(j)) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.AlbumsController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AlbumsController.m1885removeAlbum$lambda8(AlbumsController.this, j, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removeAlbum$lambda-8  reason: not valid java name */
    public static final void m1885removeAlbum$lambda8(final AlbumsController this$0, final long j, final Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getDao().deleteByAlbumId(this$0.getUserConfig().clientUserId, j);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.controller.AlbumsController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                AlbumsController.m1886removeAlbum$lambda8$lambda7(AlbumsController.this, j, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removeAlbum$lambda-8$lambda-7  reason: not valid java name */
    public static final void m1886removeAlbum$lambda8$lambda7(AlbumsController this$0, long j, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getAlbums().remove(Long.valueOf(j));
        this$0.getMessagesController().sortDialogs(null);
        this$0.getNotificationCenter().postNotificationName(NotificationCenter.dialogsNeedReload, new Object[0]);
        if (runnable == null) {
            return;
        }
        runnable.run();
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
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final AlbumsController m1888getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new AlbumsController(i);
        }

        public final AlbumsController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(AlbumsController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.AlbumsController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    AlbumsController m1888getInstance$lambda0;
                    m1888getInstance$lambda0 = AlbumsController.Companion.m1888getInstance$lambda0(i, (Integer) obj);
                    return m1888getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (AlbumsController) computeIfAbsent;
        }
    }
}
