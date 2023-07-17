package com.iMe.storage.data.repository.wallet;

import com.iMe.storage.data.locale.p027db.dao.minor.wallet.WalletTokensBalancesDao;
import com.iMe.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<WalletBalancesResponse>, ObservableSource<? extends Result<? extends List<TokenBalance>>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ String $networkId$inlined;
    final /* synthetic */ WalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, WalletRepositoryImpl walletRepositoryImpl, String str) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = walletRepositoryImpl;
        this.$networkId$inlined = str;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.iMe.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C19411 extends Lambda implements Function1<List<TokenBalance>, Result<? extends List<TokenBalance>>> {
        public static final C19411 INSTANCE = new C19411();

        public C19411() {
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
        HashMap hashMap;
        WalletTokensBalancesDao walletTokensBalancesDao;
        TelegramGateway telegramGateway;
        WalletTokensBalancesDao walletTokensBalancesDao2;
        int collectionSizeOrDefault;
        SchedulersProvider schedulersProvider;
        TelegramGateway telegramGateway2;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.isSuccess()) {
            hashMap = this.this$0.lastUpdateBalanceTime;
            hashMap.put(this.$networkId$inlined, Long.valueOf(DateExtKt.now()));
            List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain(response.getPayload());
            walletTokensBalancesDao = this.this$0.walletBalanceDao;
            telegramGateway = this.this$0.telegramGateway;
            Completable rxDeleteAllWalletBalances = walletTokensBalancesDao.rxDeleteAllWalletBalances(telegramGateway.getSelectedAccountId(), this.$networkId$inlined);
            walletTokensBalancesDao2 = this.this$0.walletBalanceDao;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mapToDomain, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (TokenBalance tokenBalance : mapToDomain) {
                telegramGateway2 = this.this$0.telegramGateway;
                arrayList.add(WalletBalanceMappingKt.mapToDb(tokenBalance, telegramGateway2.getSelectedAccountId()));
            }
            Completable andThen = rxDeleteAllWalletBalances.andThen(walletTokensBalancesDao2.rxInsert((List) arrayList));
            schedulersProvider = this.this$0.schedulersProvider;
            Completable subscribeOn = andThen.subscribeOn(schedulersProvider.mo699io());
            Observable just = Observable.just(mapToDomain);
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            Observable andThen2 = subscribeOn.andThen(just);
            Intrinsics.checkNotNullExpressionValue(andThen2, "walletBalanceDao\n       …etBalance.toObservable())");
            return andThen2.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C19411.INSTANCE));
        }
        Observable just2 = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        return just2;
    }
}
