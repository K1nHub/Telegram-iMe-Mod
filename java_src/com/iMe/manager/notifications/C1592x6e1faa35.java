package com.iMe.manager.notifications;

import com.iMe.model.wallet.notification.NotificationInformation;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.storage.PreferenceHelper;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.manager.notifications.PushNotificationsManager$sendPushToken$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1592x6e1faa35 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ List $notificationInformation$inlined;
    final /* synthetic */ PushNotificationsManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1592x6e1faa35(List list, PushNotificationsManager pushNotificationsManager) {
        super(1);
        this.$notificationInformation$inlined = list;
        this.this$0 = pushNotificationsManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1279invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1279invoke(Result<? extends Boolean> it) {
        PreferenceHelper preferenceHelper;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it instanceof Result.Success) {
            for (NotificationInformation notificationInformation : this.$notificationInformation$inlined) {
                preferenceHelper = this.this$0.preferenceHelper;
                preferenceHelper.setTempOneActionUserId(notificationInformation.getUserId());
                preferenceHelper.setPushTokenRegistered(true);
                preferenceHelper.setTempOneActionUserId("");
            }
        }
    }
}
