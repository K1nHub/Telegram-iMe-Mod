package com.iMe.fork.controller;

import com.iMe.storage.data.locale.p027db.model.bookmarks.BookmarksDb;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BookmarksController.kt */
/* loaded from: classes3.dex */
public final class BookmarksController$loadBookmarks$1 extends Lambda implements Function1<BookmarksDb, Boolean> {
    public static final BookmarksController$loadBookmarks$1 INSTANCE = new BookmarksController$loadBookmarks$1();

    BookmarksController$loadBookmarks$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(BookmarksDb it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!it.getMessageIds().isEmpty());
    }
}
