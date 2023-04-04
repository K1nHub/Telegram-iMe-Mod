package com.iMe.storage.data.locale.p027db.dao.minor.wallet;

import com.iMe.storage.data.locale.p027db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p027db.model.wallet.WalletTokenBalanceDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.List;
/* compiled from: WalletTokensBalancesDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.wallet.WalletTokensBalancesDao */
/* loaded from: classes3.dex */
public abstract class WalletTokensBalancesDao implements BaseDao<WalletTokenBalanceDb> {
    public abstract Single<List<WalletTokenBalanceDb>> getAllWalletBalances(long j, String str);

    public abstract Single<List<WalletTokenBalanceDb>> getTokensBalances(long j, String str, List<String> list);

    public abstract Completable rxDeleteAllByUserId(long j);

    public abstract Completable rxDeleteAllWalletBalances(long j, String str);

    public abstract Completable rxDeleteByNetworks(long j, List<String> list);
}