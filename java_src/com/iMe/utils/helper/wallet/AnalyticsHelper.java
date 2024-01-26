package com.iMe.utils.helper.wallet;

import com.iMe.manager.TelegramApi;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.manager.analytics.AnalyticsManager;
import com.iMe.storage.data.manager.analytics.AnalyticsManagerKt;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import com.iMe.storage.domain.storage.AnalyticsPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.UserConfig;
import org.telegram.tgnet.TLRPC$TL_authorization;
import timber.log.Timber;
/* compiled from: AnalyticsHelper.kt */
/* loaded from: classes4.dex */
public final class AnalyticsHelper implements KoinComponent {
    public static final AnalyticsHelper INSTANCE;
    private static final Lazy analyticsPreference$delegate;
    private static final Lazy schedulersProvider$delegate;
    private static final CompositeDisposable subscriptions;
    private static final Lazy telegramApi$delegate;
    private static final Lazy telegramGateway$delegate;

    private AnalyticsHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final SchedulersProvider getSchedulersProvider() {
        return (SchedulersProvider) schedulersProvider$delegate.getValue();
    }

    private final TelegramApi getTelegramApi() {
        return (TelegramApi) telegramApi$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnalyticsPreferenceHelper getAnalyticsPreference() {
        return (AnalyticsPreferenceHelper) analyticsPreference$delegate.getValue();
    }

    private final TelegramGateway getTelegramGateway() {
        return (TelegramGateway) telegramGateway$delegate.getValue();
    }

    public static final void onDestroy() {
        subscriptions.clear();
    }

    public static final void trackEventsOnStartup() {
        AnalyticsHelper analyticsHelper = INSTANCE;
        analyticsHelper.trackIsPremiumUser();
        analyticsHelper.trackIsActiveDesktopUser();
    }

    private final void trackIsPremiumUser() {
        if (DateExtKt.isDayAgo(getAnalyticsPreference().getOpenAsPremiumUserLastUpdateTime()) && UserConfig.getInstance(getTelegramGateway().getSelectedAccountIndex()).isPremium()) {
            AnalyticsManagerKt.getAnalytics();
            AnalyticsManager.trackEvent(AnalyticsEvent.OpenAppAsTelegramPremiumUser.INSTANCE);
            getAnalyticsPreference().setOpenAsPremiumUserLastUpdateTime(DateExtKt.now());
        }
    }

    private final void trackIsActiveDesktopUser() {
        if (DateExtKt.isDayAgo(getAnalyticsPreference().getActiveDesktopUserLastUpdateTime())) {
            Observable<List<TLRPC$TL_authorization>> observeOn = getTelegramApi().getAccountSessions().observeOn(getSchedulersProvider().mo1013ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<List<TLRPC$TL_authorization>, Unit>() { // from class: com.iMe.utils.helper.wallet.AnalyticsHelper$trackIsActiveDesktopUser$$inlined$subscribeWithErrorHandle$default$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<TLRPC$TL_authorization> list) {
                    m1885invoke(list);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:96:0x00cb A[SYNTHETIC] */
                /* renamed from: invoke  reason: collision with other method in class */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void m1885invoke(java.util.List<org.telegram.tgnet.TLRPC$TL_authorization> r17) {
                    /*
                        Method dump skipped, instructions count: 417
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.iMe.utils.helper.wallet.C2556x94c78a7f.m1885invoke(java.lang.Object):void");
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.utils.helper.wallet.AnalyticsHelper$trackIsActiveDesktopUser$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable error) {
                    Timber.m6e(error);
                    BaseView baseView = BaseView.this;
                    if (baseView != null) {
                        String message = error.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView.showToast(message);
                    }
                    Intrinsics.checkNotNullExpressionValue(error, "error");
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
            RxExtKt.autoDispose(subscribe, subscriptions);
        }
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        final AnalyticsHelper analyticsHelper = new AnalyticsHelper();
        INSTANCE = analyticsHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<SchedulersProvider>() { // from class: com.iMe.utils.helper.wallet.AnalyticsHelper$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.rx.SchedulersProvider, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SchedulersProvider invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(SchedulersProvider.class), qualifier, function0);
            }
        });
        schedulersProvider$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramApi>() { // from class: com.iMe.utils.helper.wallet.AnalyticsHelper$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.manager.TelegramApi, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TelegramApi invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TelegramApi.class), qualifier, function0);
            }
        });
        telegramApi$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<AnalyticsPreferenceHelper>() { // from class: com.iMe.utils.helper.wallet.AnalyticsHelper$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.storage.AnalyticsPreferenceHelper, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final AnalyticsPreferenceHelper invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(AnalyticsPreferenceHelper.class), qualifier, function0);
            }
        });
        analyticsPreference$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramGateway>() { // from class: com.iMe.utils.helper.wallet.AnalyticsHelper$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.gateway.TelegramGateway, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TelegramGateway invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), qualifier, function0);
            }
        });
        telegramGateway$delegate = lazy4;
        subscriptions = new CompositeDisposable();
    }
}
