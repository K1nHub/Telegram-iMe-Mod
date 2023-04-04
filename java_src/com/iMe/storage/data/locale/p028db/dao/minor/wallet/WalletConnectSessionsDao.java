package com.iMe.storage.data.locale.p028db.dao.minor.wallet;

import com.iMe.storage.data.locale.p028db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p028db.model.wallet.WalletConnectSessionDb;
import io.reactivex.Completable;
import io.reactivex.Flowable;
import java.util.List;
/* compiled from: WalletConnectSessionsDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletConnectSessionsDao */
/* loaded from: classes3.dex */
public abstract class WalletConnectSessionsDao implements BaseDao<WalletConnectSessionDb> {
    public abstract Flowable<List<WalletConnectSessionDb>> getAllSessions(long j);

    public abstract Completable rxDeleteAllSession(long j);

    public abstract Completable rxDeleteBySessionKey(long j, String str);
}
