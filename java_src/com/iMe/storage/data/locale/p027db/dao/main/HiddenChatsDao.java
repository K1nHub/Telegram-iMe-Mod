package com.iMe.storage.data.locale.p027db.dao.main;

import com.iMe.storage.data.locale.p027db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p027db.model.hidden_chats.HiddenChatsDb;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HiddenChatsDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao */
/* loaded from: classes4.dex */
public abstract class HiddenChatsDao implements BaseDao<HiddenChatsDb> {
    public abstract void deleteAllHiddenChatsByUserId(long j);

    public abstract int deleteByIdList(List<Long> list, long j);

    public abstract List<Long> getHiddenChats(long j);

    public void restoreBackup(long j, List<Long> hiddenChatDialogs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(hiddenChatDialogs, "hiddenChatDialogs");
        deleteAllHiddenChatsByUserId(j);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(hiddenChatDialogs, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : hiddenChatDialogs) {
            arrayList.add(new HiddenChatsDb(j, number.longValue()));
        }
        insert((List) arrayList);
    }
}
