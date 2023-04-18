package com.iMe.utils.helper.wallet;

import com.iMe.manager.TelegramApi;
import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
/* compiled from: ObservableExt.kt */
/* loaded from: classes4.dex */
public final class AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth>>, ObservableSource<? extends Result<? extends SessionTokens>>> {
    public AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends SessionTokens>> invoke(Result<? extends Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth>> result) {
        WalletSessionInteractor walletSessionInteractor;
        TelegramApi telegramApi;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth> data = result.getData();
        String first = data != null ? data.getFirst() : null;
        if (first == null) {
            first = "";
        }
        Pair<? extends String, ? extends TLRPC$TL_messages_requestUrlAuth> data2 = result.getData();
        TLRPC$TL_messages_requestUrlAuth second = data2 != null ? data2.getSecond() : null;
        if (second != null) {
            telegramApi = AuthHelper.INSTANCE.getTelegramApi();
            Observable<String> acceptUrlAuth = telegramApi.acceptUrlAuth(first, second);
            final AuthHelper$subscribeToAuthSubject$1$1 authHelper$subscribeToAuthSubject$1$1 = AuthHelper$subscribeToAuthSubject$1$1.INSTANCE;
            ObservableSource flatMap = acceptUrlAuth.flatMap(new Function(authHelper$subscribeToAuthSubject$1$1) { // from class: com.iMe.utils.helper.wallet.AuthHelper$sam$io_reactivex_functions_Function$0
                private final /* synthetic */ Function1 function;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    Intrinsics.checkNotNullParameter(authHelper$subscribeToAuthSubject$1$1, "function");
                    this.function = authHelper$subscribeToAuthSubject$1$1;
                }

                @Override // io.reactivex.functions.Function
                public final /* synthetic */ Object apply(Object obj) {
                    return this.function.invoke(obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "{\n                      …) }\n                    }");
            return flatMap;
        }
        walletSessionInteractor = AuthHelper.INSTANCE.getWalletSessionInteractor();
        return walletSessionInteractor.login(first);
    }
}
