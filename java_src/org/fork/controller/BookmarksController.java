package org.fork.controller;

import com.smedialink.storage.data.locale.p027db.dao.main.BookmarksDao;
import com.smedialink.storage.data.locale.p027db.model.bookmarks.BookmarksDb;
import com.smedialink.storage.data.mapper.bookmarks.BookmarksMappingKt;
import com.smedialink.storage.domain.model.bookmarks.BookmarksModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.fork.controller.BookmarksController;
import org.fork.models.backup.Backup;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.Utilities;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: BookmarksController.kt */
/* loaded from: classes4.dex */
public final class BookmarksController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, BookmarksController> accountInstances = new ConcurrentHashMap<>(5);
    private Map<Long, BookmarksModel> bookmarks;
    private final Lazy dao$delegate;

    public static final BookmarksController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public BookmarksController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new BookmarksController$special$$inlined$inject$default$1(this, null, null));
        this.dao$delegate = lazy;
        this.bookmarks = new LinkedHashMap();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final BookmarksDao getDao() {
        return (BookmarksDao) this.dao$delegate.getValue();
    }

    public final Map<Long, BookmarksModel> getBookmarks() {
        return this.bookmarks;
    }

    public final void loadBookmarks() {
        Sequence asSequence;
        Sequence<BookmarksDb> filter;
        Map<Long, BookmarksModel> mutableMap;
        asSequence = CollectionsKt___CollectionsKt.asSequence(getDao().getAllBookmarksForUser(getUserConfig().clientUserId));
        filter = SequencesKt___SequencesKt.filter(asSequence, BookmarksController$loadBookmarks$1.INSTANCE);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (BookmarksDb bookmarksDb : filter) {
            Pair m100to = TuplesKt.m100to(Long.valueOf(bookmarksDb.getDialogId()), BookmarksMappingKt.mapToDomain(bookmarksDb));
            linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        this.bookmarks = mutableMap;
    }

    public final void restoreBackup(Backup backup) {
        Map<Long, BookmarksModel> mutableMap;
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.getBookmarks() == null) {
            return;
        }
        Map<Long, BookmarksModel> bookmarks = backup.getBookmarks();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Long, BookmarksModel> entry : bookmarks.entrySet()) {
            if (!entry.getValue().getMessageIds().isEmpty()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        setNewBookmarks(mutableMap);
    }

    public final void setNewBookmarks(Map<Long, BookmarksModel> newBookmarks) {
        Intrinsics.checkNotNullParameter(newBookmarks, "newBookmarks");
        this.bookmarks = newBookmarks;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.BookmarksController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BookmarksController.m1897setNewBookmarks$lambda2(BookmarksController.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setNewBookmarks$lambda-2  reason: not valid java name */
    public static final void m1897setNewBookmarks$lambda2(BookmarksController this$0) {
        List<BookmarksModel> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BookmarksDao dao = this$0.getDao();
        long j = this$0.getUserConfig().clientUserId;
        list = CollectionsKt___CollectionsKt.toList(this$0.getBookmarks().values());
        dao.restoreBackup(j, list);
    }

    public final void bookmarkMessages(long j, ArrayList<Integer> ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        Map<Long, BookmarksModel> map = this.bookmarks;
        Long valueOf = Long.valueOf(j);
        BookmarksModel bookmarksModel = map.get(valueOf);
        if (bookmarksModel == null) {
            bookmarksModel = new BookmarksModel(new ArrayList(), j);
            map.put(valueOf, bookmarksModel);
        }
        final BookmarksModel bookmarksModel2 = bookmarksModel;
        bookmarksModel2.getMessageIds().addAll(ids);
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.BookmarksController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BookmarksController.m1896bookmarkMessages$lambda4(BookmarksController.this, bookmarksModel2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bookmarkMessages$lambda-4  reason: not valid java name */
    public static final void m1896bookmarkMessages$lambda4(BookmarksController this$0, BookmarksModel bookmarksModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(bookmarksModel, "$bookmarksModel");
        this$0.getDao().insert((BookmarksDao) BookmarksMappingKt.mapToDb(bookmarksModel, this$0.getUserConfig().clientUserId));
    }

    public final void unbookmarkMessages(long j, ArrayList<Integer> ids) {
        Set set;
        Intrinsics.checkNotNullParameter(ids, "ids");
        final BookmarksModel bookmarksModel = this.bookmarks.get(Long.valueOf(j));
        if (bookmarksModel == null) {
            return;
        }
        ArrayList<Integer> messageIds = bookmarksModel.getMessageIds();
        set = CollectionsKt___CollectionsKt.toSet(ids);
        messageIds.removeAll(set);
        if (bookmarksModel.getMessageIds().isEmpty()) {
            this.bookmarks.remove(Long.valueOf(j));
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.BookmarksController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BookmarksController.m1899unbookmarkMessages$lambda5(BookmarksController.this, bookmarksModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: unbookmarkMessages$lambda-5  reason: not valid java name */
    public static final void m1899unbookmarkMessages$lambda5(BookmarksController this$0, BookmarksModel bookmarksModel) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(bookmarksModel, "$bookmarksModel");
        this$0.getDao().insert((BookmarksDao) BookmarksMappingKt.mapToDb(bookmarksModel, this$0.getUserConfig().clientUserId));
    }

    public final void unbookmarkAllMessages(long j) {
        List<Long> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(j));
        unbookmarkAllMessages(listOf);
    }

    public final void unbookmarkAllMessages(List<Long> dialogIds) {
        Intrinsics.checkNotNullParameter(dialogIds, "dialogIds");
        final ArrayList arrayList = new ArrayList();
        for (Number number : dialogIds) {
            long longValue = number.longValue();
            BookmarksModel bookmarksModel = getBookmarks().get(Long.valueOf(longValue));
            if (bookmarksModel != null) {
                bookmarksModel.getMessageIds().clear();
                arrayList.add(bookmarksModel);
                getBookmarks().remove(Long.valueOf(longValue));
            }
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.BookmarksController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                BookmarksController.m1898unbookmarkAllMessages$lambda8(BookmarksController.this, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: unbookmarkAllMessages$lambda-8  reason: not valid java name */
    public static final void m1898unbookmarkAllMessages$lambda8(BookmarksController this$0, List newBookmarks) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(newBookmarks, "$newBookmarks");
        BookmarksDao dao = this$0.getDao();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(newBookmarks, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = newBookmarks.iterator();
        while (it.hasNext()) {
            arrayList.add(BookmarksMappingKt.mapToDb((BookmarksModel) it.next(), this$0.getUserConfig().clientUserId));
        }
        dao.insert((List) arrayList);
    }

    public final ArrayList<Integer> getMessagesForDialog(long j) {
        BookmarksModel bookmarksModel = this.bookmarks.get(Long.valueOf(j));
        ArrayList<Integer> messageIds = bookmarksModel == null ? null : bookmarksModel.getMessageIds();
        return messageIds == null ? new ArrayList<>() : messageIds;
    }

    /* compiled from: BookmarksController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final BookmarksController m1901getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new BookmarksController(i);
        }

        public final BookmarksController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(BookmarksController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.BookmarksController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    BookmarksController m1901getInstance$lambda0;
                    m1901getInstance$lambda0 = BookmarksController.Companion.m1901getInstance$lambda0(i, (Integer) obj);
                    return m1901getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (BookmarksController) computeIfAbsent;
        }
    }
}
