package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<WalletBalancesResponse>, ObservableSource<? extends Result<? extends List<TokenBalance>>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ WalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, WalletRepositoryImpl walletRepositoryImpl) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = walletRepositoryImpl;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getTokensBalance$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C19381 extends Lambda implements Function1<List<TokenBalance>, Result<? extends List<TokenBalance>>> {
        public static final C19381 INSTANCE = new C19381();

        public C19381() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Result<? extends List<TokenBalance>> invoke(List<TokenBalance> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Result.Companion.success(it);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<TokenBalance>>> invoke(ApiBaseResponse<WalletBalancesResponse> response) {
        WalletTokensBalancesDao walletTokensBalancesDao;
        int collectionSizeOrDefault;
        SchedulersProvider schedulersProvider;
        TelegramGateway telegramGateway;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            Observable just = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain(response.getPayload());
        walletTokensBalancesDao = this.this$0.walletBalanceDao;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mapToDomain, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (TokenBalance tokenBalance : mapToDomain) {
            telegramGateway = this.this$0.telegramGateway;
            arrayList.add(WalletBalanceMappingKt.mapToDb(tokenBalance, telegramGateway.getSelectedAccountId()));
        }
        Completable rxInsert = walletTokensBalancesDao.rxInsert((List) arrayList);
        schedulersProvider = this.this$0.schedulersProvider;
        Completable subscribeOn = rxInsert.subscribeOn(schedulersProvider.mo699io());
        Observable just2 = Observable.just(mapToDomain);
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        Observable andThen = subscribeOn.andThen(just2);
        Intrinsics.checkNotNullExpressionValue(andThen, "walletBalanceDao\n       …etBalance.toObservable())");
        return andThen.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C19381.INSTANCE));
    }
}
