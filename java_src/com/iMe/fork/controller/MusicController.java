package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.IdFabric$CustomType;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.MusicController;
import com.iMe.fork.models.backup.Backup;
import com.iMe.p030ui.music.MusicTab;
import com.iMe.storage.data.locale.p026db.dao.main.PlaylistsDao;
import com.iMe.storage.data.locale.p026db.model.music.PlaylistsDb;
import com.iMe.storage.data.mapper.music.PlaylistsMappingKt;
import com.iMe.storage.domain.model.music.PlaylistModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.Components.MediaActivity;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: MusicController.kt */
/* loaded from: classes3.dex */
public final class MusicController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, MusicController> accountInstances = new ConcurrentHashMap<>(5);
    private final Lazy dao$delegate;
    private Map<Long, PlaylistModel> playlists;
    private MusicTab selectedMusicTab;

    public static final MusicController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public MusicController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<PlaylistsDao>() { // from class: com.iMe.fork.controller.MusicController$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.data.locale.db.dao.main.PlaylistsDao, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final PlaylistsDao invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(PlaylistsDao.class), qualifier, function0);
            }
        });
        this.dao$delegate = lazy;
        this.selectedMusicTab = TelegramPreferenceKeys.User.Default.selectedMusicTab();
        this.playlists = new LinkedHashMap();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final PlaylistsDao getDao() {
        return (PlaylistsDao) this.dao$delegate.getValue();
    }

    public final MusicTab getSelectedMusicTab() {
        return this.selectedMusicTab;
    }

    public final void setSelectedMusicTab(MusicTab musicTab) {
        Intrinsics.checkNotNullParameter(musicTab, "<set-?>");
        this.selectedMusicTab = musicTab;
    }

    public final Map<Long, PlaylistModel> getPlaylists() {
        return this.playlists;
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putString(TelegramPreferenceKeys.User.selectedMusicTab(), this.selectedMusicTab.name());
        edit.apply();
    }

    public final void restoreBackup(Backup backup) {
        Map<Long, PlaylistModel> mutableMap;
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.getSelectedMusicTab() != null) {
            this.selectedMusicTab = MusicTab.Companion.mapNameToEnum(backup.getSelectedMusicTab());
        }
        if (backup.getMusicPlaylists() != null) {
            Map<Long, PlaylistModel> musicPlaylists = backup.getMusicPlaylists();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<Long, PlaylistModel> entry : musicPlaylists.entrySet()) {
                if (!entry.getValue().getMessageIds().isEmpty()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
            setNewPlaylists(mutableMap);
        }
    }

    public final void loadPlaylists() {
        Sequence asSequence;
        Sequence<PlaylistsDb> filter;
        Map<Long, PlaylistModel> mutableMap;
        asSequence = CollectionsKt___CollectionsKt.asSequence(getDao().getAllPlaylistsForUser(getUserConfig().clientUserId));
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<PlaylistsDb, Boolean>() { // from class: com.iMe.fork.controller.MusicController$loadPlaylists$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(PlaylistsDb it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(!it.getMessageIds().isEmpty());
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (PlaylistsDb playlistsDb : filter) {
            Pair m149to = TuplesKt.m149to(Long.valueOf(playlistsDb.getDialogId()), PlaylistsMappingKt.mapToDomain(playlistsDb));
            linkedHashMap.put(m149to.getFirst(), m149to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.playlists = mutableMap;
    }

    public final void addPlaylistMessage(long j, final List<? extends MessageObject> messages) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(messages, "messages");
        Map<Long, PlaylistModel> map = this.playlists;
        Long valueOf = Long.valueOf(j);
        PlaylistModel playlistModel = map.get(valueOf);
        if (playlistModel == null) {
            playlistModel = new PlaylistModel(new ArrayList(), j);
            map.put(valueOf, playlistModel);
        }
        final PlaylistModel playlistModel2 = playlistModel;
        ArrayList<Integer> messageIds = playlistModel2.getMessageIds();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(messages, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (MessageObject messageObject : messages) {
            arrayList.add(Integer.valueOf(messageObject.getId()));
        }
        messageIds.addAll(arrayList);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.MusicController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.addPlaylistMessage$lambda$6(MusicController.this, playlistModel2);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.MusicController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.addPlaylistMessage$lambda$7(MusicController.this, messages);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addPlaylistMessage$lambda$6(MusicController this$0, PlaylistModel playlist) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(playlist, "$playlist");
        this$0.getDao().insert((PlaylistsDao) PlaylistsMappingKt.mapToDb(playlist, this$0.getUserConfig().clientUserId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void addPlaylistMessage$lambda$7(MusicController this$0, List messages) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messages, "$messages");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.playlistDidChanged, messages, Boolean.TRUE);
    }

    public final void removePlaylistMessage(long j, final List<Integer> messageIds) {
        Set set;
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        final PlaylistModel playlistModel = this.playlists.get(Long.valueOf(j));
        if (playlistModel == null) {
            return;
        }
        ArrayList<Integer> messageIds2 = playlistModel.getMessageIds();
        set = CollectionsKt___CollectionsKt.toSet(messageIds);
        messageIds2.removeAll(set);
        if (playlistModel.getMessageIds().isEmpty()) {
            this.playlists.remove(Long.valueOf(j));
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.MusicController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.removePlaylistMessage$lambda$8(MusicController.this, playlistModel);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.fork.controller.MusicController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.removePlaylistMessage$lambda$9(MusicController.this, messageIds);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removePlaylistMessage$lambda$8(MusicController this$0, PlaylistModel playlist) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(playlist, "$playlist");
        this$0.getDao().insert((PlaylistsDao) PlaylistsMappingKt.mapToDb(playlist, this$0.getUserConfig().clientUserId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removePlaylistMessage$lambda$9(MusicController this$0, List messageIds) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageIds, "$messageIds");
        this$0.getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.playlistDidChanged, messageIds, Boolean.FALSE);
    }

    public final void showAddToPlaylistUndoView(BaseFragment baseFragment, boolean z) {
        if (baseFragment instanceof MediaActivity) {
            ((MediaActivity) baseFragment).getUndoView().showWithAction(0L, z ? IdFabric$CustomType.UNDO_ADD_TO_PLAYLIST : IdFabric$CustomType.UNDO_REMOVE_TO_PLAYLIST, (Object) 1);
        }
    }

    public final ArrayList<Integer> getPlaylistForDialog(long j) {
        ArrayList<Integer> messageIds;
        PlaylistModel playlistModel = this.playlists.get(Long.valueOf(j));
        return (playlistModel == null || (messageIds = playlistModel.getMessageIds()) == null) ? new ArrayList<>() : messageIds;
    }

    private final void setNewPlaylists(Map<Long, PlaylistModel> map) {
        this.playlists = map;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.MusicController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.setNewPlaylists$lambda$11(MusicController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setNewPlaylists$lambda$11(MusicController this$0) {
        List<PlaylistModel> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PlaylistsDao dao = this$0.getDao();
        long j = this$0.getUserConfig().clientUserId;
        list = CollectionsKt___CollectionsKt.toList(this$0.playlists.values());
        dao.restoreBackup(j, list);
    }

    /* compiled from: MusicController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final MusicController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (MusicController) tmp0.invoke(obj);
        }

        public final MusicController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = MusicController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, MusicController> function1 = new Function1<Integer, MusicController>() { // from class: com.iMe.fork.controller.MusicController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final MusicController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new MusicController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.MusicController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    MusicController instance$lambda$0;
                    instance$lambda$0 = MusicController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (MusicController) computeIfAbsent;
        }
    }
}
