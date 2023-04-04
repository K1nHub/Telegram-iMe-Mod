package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class WalletSessionInteractor$login$lambda$4$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ WalletSessionInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSessionInteractor$login$lambda$4$$inlined$flatMapSuccess$1(WalletSessionInteractor walletSessionInteractor) {
        super(1);
        this.this$0 = walletSessionInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends Boolean> result) {
        PushNotificationRepository pushNotificationRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            pushNotificationRepository = this.this$0.notificationRepository;
            Observable<Result<String>> issuePushAllowanceToken = pushNotificationRepository.issuePushAllowanceToken();
            schedulersProvider = this.this$0.schedulersProvider;
            Observable<Result<String>> subscribeOn = issuePushAllowanceToken.subscribeOn(schedulersProvider.mo708io());
            Intrinsics.checkNotNullExpressionValue(subscribeOn, "notificationRepository.i…(schedulersProvider.io())");
            return subscribeOn;
        } else if (result instanceof Result.Error) {
            Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
            return Observable.just(error$default);
        } else {
            return Observable.empty();
        }
    }
}
