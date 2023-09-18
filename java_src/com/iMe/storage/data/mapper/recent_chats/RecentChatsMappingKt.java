package com.iMe.storage.data.mapper.recent_chats;

import com.iMe.storage.data.locale.p027db.model.recent_chats.HistoryDialogDb;
import com.iMe.storage.domain.model.HistoryDialogModel;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RecentChatsMapping.kt */
/* loaded from: classes4.dex */
public final class RecentChatsMappingKt {
    public static final HistoryDialogModel mapToDomain(HistoryDialogDb historyDialogDb) {
        Intrinsics.checkNotNullParameter(historyDialogDb, "<this>");
        return new HistoryDialogModel(historyDialogDb.getDialogId(), historyDialogDb.getCreationDate(), historyDialogDb.isPinned());
    }

    public static final HistoryDialogDb mapToDb(HistoryDialogModel historyDialogModel, long j) {
        Intrinsics.checkNotNullParameter(historyDialogModel, "<this>");
        return new HistoryDialogDb(j, historyDialogModel.getDialogId(), historyDialogModel.getCreationDate(), historyDialogModel.isPinned());
    }
}
