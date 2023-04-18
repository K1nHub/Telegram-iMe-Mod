package com.iMe.storage.data.mapper.bookmarks;

import com.iMe.storage.data.locale.p027db.model.bookmarks.BookmarksDb;
import com.iMe.storage.domain.model.bookmarks.BookmarksModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BookmarksMapping.kt */
/* loaded from: classes3.dex */
public final class BookmarksMappingKt {
    public static final BookmarksModel mapToDomain(BookmarksDb bookmarksDb) {
        Intrinsics.checkNotNullParameter(bookmarksDb, "<this>");
        return new BookmarksModel(new ArrayList(bookmarksDb.getMessageIds()), bookmarksDb.getDialogId());
    }

    public static final BookmarksDb mapToDb(BookmarksModel bookmarksModel, long j) {
        List mutableList;
        Intrinsics.checkNotNullParameter(bookmarksModel, "<this>");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) bookmarksModel.getMessageIds());
        return new BookmarksDb(mutableList, bookmarksModel.getDialogId(), j);
    }
}
