package com.iMe.storage.data.locale.p027db.dao.main;

import com.iMe.storage.data.locale.p027db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p027db.model.hidden_chats.HiddenChatsDb;
import java.util.List;
/* compiled from: HiddenChatsDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.HiddenChatsDao */
/* loaded from: classes3.dex */
public abstract class HiddenChatsDao implements BaseDao<HiddenChatsDb> {
    public abstract int deleteByIdList(List<Long> list, long j);

    public abstract List<Long> getHiddenChats(long j);
}
