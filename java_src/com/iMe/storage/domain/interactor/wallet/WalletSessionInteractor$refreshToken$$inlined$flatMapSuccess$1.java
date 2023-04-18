package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.repository.notification.PushNotificationRepository;
import com.iMe.storage.domain.storage.PreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends SessionTokens>, ObservableSource<? extends Result<? extends SessionTokens>>> {
    final /* synthetic */ WalletSessionInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1(WalletSessionInteractor walletSessionInteractor) {
        super(1);
        this.this$0 = walletSessionInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends SessionTokens>> invoke(Result<? extends SessionTokens> result) {
        PreferenceHelper preferenceHelper;
        PushNotificationRepository pushNotificationRepository;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            preferenceHelper = this.this$0.preferenceHelper;
            if (preferenceHelper.getPushAllowanceToken().length() == 0) {
                pushNotificationRepository = this.this$0.notificationRepository;
                Observable<R> flatMap = pushNotificationRepository.issuePushAllowanceToken().flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new C1902x36b1d932(this.this$0)));
                Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                Observable map = flatMap.map(new WalletSessionInteractor$sam$io_reactivex_functions_Function$0(new WalletSessionInteractor$refreshToken$1$2(result)));
                schedulersProvider = this.this$0.schedulersProvider;
                Observable subscribeOn = map.subscribeOn(schedulersProvider.mo694io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "result ->\n              …                        }");
                return subscribeOn;
            }
            Observable just = Observable.just(result);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        } else if (result instanceof Result.Error) {
            Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
            return Observable.just(error$default);
        } else {
            return Observable.empty();
        }
    }
}
