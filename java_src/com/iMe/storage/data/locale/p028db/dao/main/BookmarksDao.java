package com.iMe.storage.data.locale.p028db.dao.main;

import com.iMe.storage.data.locale.p028db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p028db.model.bookmarks.BookmarksDb;
import com.iMe.storage.data.mapper.bookmarks.BookmarksMappingKt;
import com.iMe.storage.domain.model.bookmarks.BookmarksModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BookmarksDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.BookmarksDao */
/* loaded from: classes3.dex */
public abstract class BookmarksDao implements BaseDao<BookmarksDb> {
    public abstract void deleteAllBookmarksByUserId(long j);

    public abstract List<BookmarksDb> getAllBookmarksForUser(long j);

    public void restoreBackup(long j, List<BookmarksModel> settings) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(settings, "settings");
        deleteAllBookmarksByUserId(j);
        if (!settings.isEmpty()) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(settings, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (BookmarksModel bookmarksModel : settings) {
                arrayList.add(BookmarksMappingKt.mapToDb(bookmarksModel, j));
            }
            insert((List) arrayList);
        }
    }
}
