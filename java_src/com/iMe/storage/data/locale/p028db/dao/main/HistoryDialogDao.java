package com.iMe.storage.data.locale.p028db.dao.main;

import com.iMe.storage.data.locale.p028db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p028db.model.recent_chats.HistoryDialogDb;
import java.util.List;
/* compiled from: HistoryDialogDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.HistoryDialogDao */
/* loaded from: classes3.dex */
public abstract class HistoryDialogDao implements BaseDao<HistoryDialogDb> {
    public abstract void clearRecentChatHistory(boolean z);

    public abstract int deleteByIdList(List<Long> list, long j);

    public abstract List<HistoryDialogDb> getHistoryDialog(long j);

    public abstract void removeRecentChatHistory(long j, long j2);

    public abstract void updatePinned(long j, long j2, boolean z);

    public static /* synthetic */ void clearRecentChatHistory$default(HistoryDialogDao historyDialogDao, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clearRecentChatHistory");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        historyDialogDao.clearRecentChatHistory(z);
    }
}
