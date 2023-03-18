package com.smedialink.storage.data.repository.wallet;

import com.smedialink.storage.data.locale.p027db.dao.minor.wallet.WalletTokenBalanceDao;
import com.smedialink.storage.data.mapper.wallet.WalletBalanceMappingKt;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.response.base.ApiBaseResponse;
import com.smedialink.storage.data.network.model.response.wallet.WalletBalancesResponse;
import com.smedialink.storage.data.utils.extentions.DateExtKt;
import com.smedialink.storage.data.utils.extentions.FirebaseExtKt$sam$i$io_reactivex_functions_Function$0;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1 extends Lambda implements Function1<ApiBaseResponse<WalletBalancesResponse>, ObservableSource<? extends Result<? extends List<? extends TokenBalance>>>> {
    final /* synthetic */ FirebaseFunctionsErrorHandler $errorHandler;
    final /* synthetic */ NetworkType $networkType$inlined;
    final /* synthetic */ WalletRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1(FirebaseFunctionsErrorHandler firebaseFunctionsErrorHandler, WalletRepositoryImpl walletRepositoryImpl, NetworkType networkType) {
        super(1);
        this.$errorHandler = firebaseFunctionsErrorHandler;
        this.this$0 = walletRepositoryImpl;
        this.$networkType$inlined = networkType;
    }

    /* compiled from: FirebaseExt.kt */
    /* renamed from: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$$inlined$flatMapSuccess$1$1 */
    /* loaded from: classes3.dex */
    public static final class C18051 extends Lambda implements Function1<List<? extends TokenBalance>, Result<? extends List<? extends TokenBalance>>> {
        public static final C18051 INSTANCE = new C18051();

        public C18051() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Result<? extends List<? extends TokenBalance>> invoke(List<? extends TokenBalance> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Result.Companion.success(it);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<List<? extends TokenBalance>>> invoke(ApiBaseResponse<WalletBalancesResponse> response) {
        HashMap hashMap;
        List<TokenBalance> sortedWith;
        WalletTokenBalanceDao walletTokenBalanceDao;
        TelegramGateway telegramGateway;
        WalletTokenBalanceDao walletTokenBalanceDao2;
        int collectionSizeOrDefault;
        SchedulersProvider schedulersProvider;
        TelegramGateway telegramGateway2;
        Intrinsics.checkNotNullParameter(response, "response");
        if (!response.isSuccess()) {
            Observable just = Observable.just(Result.Companion.error$default(Result.Companion, this.$errorHandler.handleError((ApiBaseResponse<?>) response), null, 2, null));
            Intrinsics.checkNotNullExpressionValue(just, "just(this)");
            return just;
        }
        hashMap = this.this$0.lastUpdateBalanceTime;
        hashMap.put(this.$networkType$inlined, Long.valueOf(DateExtKt.now()));
        List<TokenBalance> mapToDomain = WalletBalanceMappingKt.mapToDomain(response.getPayload());
        ArrayList arrayList = new ArrayList();
        for (Object obj : mapToDomain) {
            if (((TokenBalance) obj).getCode() != TokenCode.UNKNOWN) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.smedialink.storage.data.repository.wallet.WalletRepositoryImpl$getWalletBalance$lambda$6$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                TokenInfo.Companion companion = TokenInfo.Companion;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(companion.map(((TokenBalance) t).getCode()).getSortPosition()), Integer.valueOf(companion.map(((TokenBalance) t2).getCode()).getSortPosition()));
                return compareValues;
            }
        });
        walletTokenBalanceDao = this.this$0.walletBalanceDao;
        telegramGateway = this.this$0.telegramGateway;
        Completable rxDeleteAllWalletBalances = walletTokenBalanceDao.rxDeleteAllWalletBalances(telegramGateway.getSelectedAccountId(), this.$networkType$inlined.name());
        walletTokenBalanceDao2 = this.this$0.walletBalanceDao;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (TokenBalance tokenBalance : sortedWith) {
            telegramGateway2 = this.this$0.telegramGateway;
            arrayList2.add(WalletBalanceMappingKt.mapToDb(tokenBalance, telegramGateway2.getSelectedAccountId()));
        }
        Completable andThen = rxDeleteAllWalletBalances.andThen(walletTokenBalanceDao2.rxInsert((List) arrayList2));
        schedulersProvider = this.this$0.schedulersProvider;
        Completable subscribeOn = andThen.subscribeOn(schedulersProvider.mo708io());
        Observable just2 = Observable.just(sortedWith);
        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
        Observable andThen2 = subscribeOn.andThen(just2);
        Intrinsics.checkNotNullExpressionValue(andThen2, "walletBalanceDao\n       …etBalance.toObservable())");
        return andThen2.map(new FirebaseExtKt$sam$i$io_reactivex_functions_Function$0(C18051.INSTANCE));
    }
}
