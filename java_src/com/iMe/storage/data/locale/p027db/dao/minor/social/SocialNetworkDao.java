package com.iMe.storage.data.locale.p027db.dao.minor.social;

import com.iMe.storage.data.locale.p027db.model.social.SocialNetworkDb;
import io.reactivex.Completable;
import io.reactivex.Single;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialNetworkDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.minor.social.SocialNetworkDao */
/* loaded from: classes3.dex */
public interface SocialNetworkDao {
    void clearAndInsertAll(long j, List<SocialNetworkDb> list);

    Completable clearByUserId(long j);

    Single<List<SocialNetworkDb>> getAllByProfileId(long j);

    void insertAll(List<SocialNetworkDb> list);

    /* compiled from: SocialNetworkDao.kt */
    /* renamed from: com.iMe.storage.data.locale.db.dao.minor.social.SocialNetworkDao$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$clearAndInsertAll(SocialNetworkDao _this, long j, List socialNetworks) {
            Intrinsics.checkNotNullParameter(socialNetworks, "socialNetworks");
            _this.clearByUserId(j);
            _this.insertAll(socialNetworks);
        }
    }
}
