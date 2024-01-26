package com.iMe.storage.domain.repository.notification;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.notification.Notification;
import io.reactivex.Completable;
import io.reactivex.Observable;
import java.util.List;
/* compiled from: PushNotificationRepository.kt */
/* loaded from: classes3.dex */
public interface PushNotificationRepository {
    Observable<Result<Boolean>> deletePushToken();

    Observable<Result<List<Notification>>> getNotifications(String str);

    Observable<Result<String>> issuePushAllowanceToken();

    Observable<Result<Boolean>> savePushToken(List<String> list);

    Completable sendActivityMark();

    Observable<Result<Boolean>> setAllNotificationsRead();

    Observable<Result<Boolean>> setNotificationsRead(String str);
}
