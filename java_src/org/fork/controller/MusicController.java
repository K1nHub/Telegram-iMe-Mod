package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import com.smedialink.p031ui.music.MusicTab;
import com.smedialink.storage.data.locale.p027db.dao.main.PlaylistsDao;
import com.smedialink.storage.data.locale.p027db.model.music.PlaylistsDb;
import com.smedialink.storage.data.mapper.music.PlaylistsMappingKt;
import com.smedialink.storage.domain.model.music.PlaylistModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.fork.controller.MusicController;
import org.fork.models.backup.Backup;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: MusicController.kt */
/* loaded from: classes4.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new MusicController$special$$inlined$inject$default$1(this, null, null));
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
        edit.putString(TelegramPreferenceKeys.User.selectedMusicTab(), getSelectedMusicTab().name());
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
        filter = SequencesKt___SequencesKt.filter(asSequence, MusicController$loadPlaylists$1.INSTANCE);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (PlaylistsDb playlistsDb : filter) {
            Pair m100to = TuplesKt.m100to(Long.valueOf(playlistsDb.getDialogId()), PlaylistsMappingKt.mapToDomain(playlistsDb));
            linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.playlists = mutableMap;
    }

    public final void setNewPlaylists(Map<Long, PlaylistModel> newBookmarks) {
        Intrinsics.checkNotNullParameter(newBookmarks, "newBookmarks");
        this.playlists = newBookmarks;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.MusicController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.m1927setNewPlaylists$lambda4(MusicController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setNewPlaylists$lambda-4  reason: not valid java name */
    public static final void m1927setNewPlaylists$lambda4(MusicController this$0) {
        List<PlaylistModel> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PlaylistsDao dao = this$0.getDao();
        long j = this$0.getUserConfig().clientUserId;
        list = CollectionsKt___CollectionsKt.toList(this$0.getPlaylists().values());
        dao.restoreBackup(j, list);
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
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.MusicController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.m1923addPlaylistMessage$lambda7(MusicController.this, playlistModel2);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.controller.MusicController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.m1924addPlaylistMessage$lambda8(MusicController.this, messages);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addPlaylistMessage$lambda-7  reason: not valid java name */
    public static final void m1923addPlaylistMessage$lambda7(MusicController this$0, PlaylistModel playlist) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(playlist, "$playlist");
        this$0.getDao().insert((PlaylistsDao) PlaylistsMappingKt.mapToDb(playlist, this$0.getUserConfig().clientUserId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addPlaylistMessage$lambda-8  reason: not valid java name */
    public static final void m1924addPlaylistMessage$lambda8(MusicController this$0, List messages) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messages, "$messages");
        this$0.getNotificationCenter().postNotificationName(NotificationCenter.playlistDidChanged, messages, Boolean.TRUE);
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
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.MusicController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.m1926removePlaylistMessage$lambda9(MusicController.this, playlistModel);
            }
        });
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.fork.controller.MusicController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MusicController.m1925removePlaylistMessage$lambda10(MusicController.this, messageIds);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removePlaylistMessage$lambda-9  reason: not valid java name */
    public static final void m1926removePlaylistMessage$lambda9(MusicController this$0, PlaylistModel playlist) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(playlist, "$playlist");
        this$0.getDao().insert((PlaylistsDao) PlaylistsMappingKt.mapToDb(playlist, this$0.getUserConfig().clientUserId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removePlaylistMessage$lambda-10  reason: not valid java name */
    public static final void m1925removePlaylistMessage$lambda10(MusicController this$0, List messageIds) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageIds, "$messageIds");
        this$0.getNotificationCenter().postNotificationName(NotificationCenter.playlistDidChanged, messageIds, Boolean.FALSE);
    }

    public final ArrayList<Integer> getPlaylistForDialog(long j) {
        PlaylistModel playlistModel = this.playlists.get(Long.valueOf(j));
        ArrayList<Integer> messageIds = playlistModel == null ? null : playlistModel.getMessageIds();
        return messageIds == null ? new ArrayList<>() : messageIds;
    }

    /* compiled from: MusicController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final MusicController m1928getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new MusicController(i);
        }

        public final MusicController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(MusicController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.MusicController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    MusicController m1928getInstance$lambda0;
                    m1928getInstance$lambda0 = MusicController.Companion.m1928getInstance$lambda0(i, (Integer) obj);
                    return m1928getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (MusicController) computeIfAbsent;
        }
    }
}
